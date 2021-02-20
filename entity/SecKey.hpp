#ifndef SHARE_KEY_PLATFORM_SECKEY_H
#define SHARE_KEY_PLATFORM_SECKEY_H

#include <string.h>

/**
 * 共享内存使用的节点
 */
class SecKeyNode {
public:
    SecKeyNode(const char *secKey, const char *clientId, const char *serverId) {
        memcpy(this->secKey, secKey, strlen(secKey));
        memcpy(this->clientId, clientId, strlen(clientId));
        memcpy(this->serverId, serverId, strlen(serverId));
    };

public:
    char secKey[32] = {0};
    char clientId[16] = {0};
    char serverId[16] = {0};
};

/**
 * 数据库中使用的数据模型
 */
class SecKeyEntity : public SecKeyNode {
public:
    SecKeyEntity(const char *secKey, const char *clientId, const char *serverId, int secKeyId, int status): SecKeyNode(secKey, clientId, serverId), secKeyId(secKeyId), status(status) {};
public:
    int secKeyId;
    int status;
};

#endif