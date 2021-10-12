#include "sysinc.h"
#include "module.h"

/* the variable keeps timeout setting for item processing */
static int  item_timeout = 0;

int mq_q_depth(AGENT_REQUEST *request, AGENT_RESULT *result);

static ZBX_METRIC keys[] = {
    {"mq.q.depth", CF_HAVEPARAMS,   mq_q_depth, "ECHO"},
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

    SET_UI64_RESULT(result, 42);
    return SYSINFO_RET_OK;
}

int zbx_module_init() {
    return ZBX_MODULE_OK;
}

int zbx_module_uninit() {
    return ZBX_MODULE_OK;
}
