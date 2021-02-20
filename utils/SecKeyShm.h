//
// Created by xiaohun on 2021/2/19.
//

#ifndef SHARE_KEY_PLATFORM_SECKEYSHM_H
#define SHARE_KEY_PLATFORM_SECKEYSHM_H

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <string>
#include "../entity/SecKey.hpp"

using namespace std;

class SecKeyShm {
public:
    SecKeyShm(key_t key, int maxNode);

    SecKeyShm(char *path, int maxNode);

    SecKeyNode *getSecKey(const char *clientId, const char *serverId);

    bool addSecKey(const char *clientId, const char *serverId, const char *secKey);

    bool rmSecKey(SecKeyNode *node);

    ~SecKeyShm();

private:
    bool checkWriteAbleMemery(SecKeyNode *node_ptr);

    void *mapShm();

    void unMapShm();

private:
    int max_node;
    int length;
    int shm_id;
    void *shm_ptr;
};


#endif //SHARE_KEY_PLATFORM_SECKEYSHM_H
