#include <iostream>
#include "../utils/SecKeyShm.h"

int main1() {
    char *clientId = "c00001";
    char *serverId = "s00001";

    SecKeyShm secKeyShm(123455631, 125);
    secKeyShm.addSecKey(clientId, serverId, "aaabbbcccc");

    SecKeyNode *node = secKeyShm.getSecKey(clientId, serverId);
    if (node != nullptr) {
        printf("%s\r\n", node->serverId);
        printf("%s\r\n", node->clientId);
        printf("%s\r\n", node->secKey);
    }
    free(node);
    return 0;
}
