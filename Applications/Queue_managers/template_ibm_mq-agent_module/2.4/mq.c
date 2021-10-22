#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
 
#include <cmqc.h>       /* MQI  */
#include <cmqcfc.h>     /* PCF  */
#include <cmqbc.h>      /* MQAI */

#include <sysinc.h>     /* ZABBIX */
#include <module.h>     /* ZBX_MODULE */

/* the variable keeps timeout setting for item processing */
static int  item_timeout = 0;

int mq_q_depth(AGENT_REQUEST *request, AGENT_RESULT *result);

static ZBX_METRIC keys[] = {
    {"mq.q.depth", CF_HAVEPARAMS, mq_q_depth, "ECHO"},
    {NULL}
};

ZBX_METRIC *zbx_module_item_list() {
    return keys;
}

int zbx_module_api_version() {
    return ZBX_MODULE_API_VERSION_ONE;
}

void zbx_module_item_timeout(int timeout) {
    item_timeout = timeout;
}

int mq_q_depth(AGENT_REQUEST *request, AGENT_RESULT *result) {
    char *param;

    if (request->nparam != 1) {
        SET_MSG_RESULT(result, strdup("You must give queue name as param!"));
        return SYSINFO_RET_FAIL;
    }
    param = get_rparam(request, 0);

    MQCHAR qmName[MQ_Q_MGR_NAME_LENGTH+1]="*";      /* default QMgr name  */
    MQCHAR queue[MQ_Q_NAME_LENGTH+1];

    MQHCONN hConn;
    MQLONG reason;
    MQLONG connReason;
    MQLONG compCode;
    MQHBAG adminBag = MQHB_UNUSABLE_HBAG;
    MQHBAG responseBag = MQHB_UNUSABLE_HBAG;
    MQHBAG qAttrsBag;
    MQHBAG errorBag;
    MQLONG mqExecuteCC;
    MQLONG mqExecuteRC;
    MQLONG qNameLength;
    MQLONG qDepth;

    /* process commandline args (get queue name if provided)*/ 
    if (argc > 1) strncpy(queue, param, (size_t)MQ_Q_NAME_LENGTH);

    /* connect to QM */
    MQCONN(qmName, &hConn, &compCode, &connReason);

    /* when connection call failed */ 
    if (compCode == MQCC_FAILED) {
        SET_MSG_RESULT(result, strdup("MQ_CONN call failed"));
        return SYSINFO_RET_FAIL;
    }

    /* bag for inquiry */
    mqCreateBag(MQCBO_ADMIN_BAG, &adminBag, &compCode, &reason);
    /* bag for the response */
    mqCreateBag(MQCBO_ADMIN_BAG, &responseBag, &compCode, &reason);
 
    /* create the inquiry by putting request items in the bag */
    mqAddString(adminBag, MQCA_Q_NAME, MQBL_NULL_TERMINATED, queue, &compCode, &reason);
    mqAddInteger(adminBag, MQIA_Q_TYPE, MQQT_LOCAL, &compCode, &reason);
    mqAddInquiry(adminBag, MQIA_CURRENT_Q_DEPTH, &compCode, &reason);

    /* execute the inquiry */ 
    mqExecute(
        hConn,              
        MQCMD_INQUIRE_Q,    /* command (in this case INQUIRE) */
        MQHB_NONE,          /* no options */
        adminBag,           /* handle to inquiry bag */
        responseBag,        /* handle to response bag */
        MQHO_NONE,          /* place this on SYSTEM.ADMIN.COMMAND.QUEUE */
        MQHO_NONE,          /* use a temp q for the response */
        &compCode, &reason  /* completion code and error msg */ 
    );
 
    if (reason == MQRC_CMD_SERVER_NOT_AVAILABLE) {
        MQDISC(&hConn, &compCode, &reason);
        SET_MSG_RESULT(result, strdup("MQ CMD Server not available"));
        return SYSINFO_RET_FAIL;
    }

    /* when mqExecute was successful */
    if ( compCode == MQCC_OK ) { 
        mqInquireBag(responseBag, MQHA_BAG_HANDLE, 0, &qAttrsBag, &compCode, &reason);
        mqInquireInteger(qAttrsBag, MQIA_CURRENT_Q_DEPTH, MQIND_NONE, &qDepth, &compCode, &reason);

        SET_UI64_RESULT(result, qDepth);
    }
    /* when mqExecute failed */
    else {
        SET_MSG_RESULT(result, strdup("MQ_EXECUTE call failed"));
        return SYSINFO_RET_FAIL;
    }
 
    /* cleanup - delete bags, and disconnect */
    if (adminBag != MQHB_UNUSABLE_HBAG) {
        mqDeleteBag(&adminBag, &compCode, &reason);
    }
    if (responseBag != MQHB_UNUSABLE_HBAG) {
        mqDeleteBag(&responseBag, &compCode, &reason);
    }
    if (connReason != MQRC_ALREADY_CONNECTED) {
        MQDISC(&hConn, &compCode, &reason);
    }

    return SYSINFO_RET_OK;
}

int zbx_module_init() {
    return ZBX_MODULE_OK;
}

int zbx_module_uninit() {
    return ZBX_MODULE_OK;
}
