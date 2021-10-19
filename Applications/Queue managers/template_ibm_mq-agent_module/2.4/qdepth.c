#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
 
#include <cmqc.h>     /* MQI  */
#include <cmqcfc.h>   /* PCF  */
#include <cmqbc.h>    /* MQAI */
 
int main(int argc, char *argv[]) {
    MQCHAR qmName[MQ_Q_MGR_NAME_LENGTH+1]="PLTAG001"; /* default QMgr name  */
    MQCHAR queue[MQ_Q_NAME_LENGTH+1]="ECHO";          /* default queue name */ 

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
    if (argc > 1) strncpy(queue, argv[1], (size_t)MQ_Q_NAME_LENGTH);

    /* connect to QM */
    MQCONN(qmName, &hConn, &compCode, &connReason);

    /* when connection call failed */ 
    if (compCode == MQCC_FAILED) {
        exit((int)connReason);
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
        exit(98);
    }

    /* when mqExecute was successful */
    if ( compCode == MQCC_OK ) { 
        mqInquireBag(responseBag, MQHA_BAG_HANDLE, 0, &qAttrsBag, &compCode, &reason);
        mqInquireInteger(qAttrsBag, MQIA_CURRENT_Q_DEPTH, MQIND_NONE, &qDepth, &compCode, &reason);
        printf("%d\n", qDepth);
    }
    /* when mqExecute failed */
    else {
        printf("Call for queue attrs failed: Completion Code = %d : Reason = %d\n", compCode, reason);
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
    return 0;
}
