//
// Created by xiaohun on 2021/2/19.
//
#include <new>
#include <cstdio>
#include <cstdlib>
#include <string.h>
#include "SecKeyShm.h"

SecKeyShm::SecKeyShm(key_t key, int maxNode) : shm_ptr(nullptr) {
    this->max_node = maxNode;
    this->shm_id = shmget(key, maxNode * sizeof(SecKeyNode), IPC_CREAT | 0664);
    if (this->shm_id == -1) {
        perror("create shm error");
        exit(EXIT_FAILURE);
    }

    if (maxNode > 0) {
        this->mapShm();
        memset(this->shm_ptr, 0, this->max_node * sizeof(SecKeyNode));
        this->unMapShm();
    }
}

SecKeyShm::SecKeyShm(char *path, int maxNode) {
    key_t key = ftok(path, 0);
    if (key == -1) {
        perror("get shm get error");
        exit(EXIT_FAILURE);
    }

    new(this) SecKeyShm(key, maxNode);
}

bool SecKeyShm::checkWriteAbleMemery(SecKeyNode *node_ptr) {
    SecKeyNode *temp = static_cast<SecKeyNode *>(calloc(1, sizeof(SecKeyNode)));
    int result = memcmp(node_ptr, temp, sizeof(SecKeyNode));

    free(temp);
    return result == 0;
}

void *SecKeyShm::mapShm() {
    this->shm_ptr = shmat(this->shm_id, nullptr, 0);
    return this->shm_ptr;
}

void SecKeyShm::unMapShm() {
    shmdt(this->shm_ptr);
    this->shm_ptr = nullptr;
}

SecKeyNode *SecKeyShm::getSecKey(const char *clientId, const char *serverId) {
    SecKeyNode *node = nullptr;
    SecKeyNode *start = static_cast<SecKeyNode *>(this->mapShm());
    for (int i = 0; i < this->length; ++i) {
        if (strcmp(start[i].serverId, serverId) == 0 && strcmp(start[i].clientId, clientId) == 0) {
            node = static_cast<SecKeyNode *>(calloc(1, sizeof(SecKeyNode)));
            memcpy(node, start + i, sizeof(SecKeyNode));
            break;
        }
    }

    this->unMapShm();
    return node;
}

bool SecKeyShm::addSecKey(const char *clientId, const char *serverId, const char *secKey) {
    SecKeyNode secKeyNode(secKey, clientId, serverId);
    SecKeyNode *start = static_cast<SecKeyNode *>(this->mapShm());

    bool result = false;
    for (int i = 0; i < max_node; ++i) {
        if (this->checkWriteAbleMemery(start + i)) {
            memcpy(start + i, &secKeyNode, sizeof(SecKeyNode));
            this->length = max(this->length, i + 1);
            result = true;
            break;
        }
    }

    this->unMapShm();
    return result;
}

bool SecKeyShm::rmSecKey(SecKeyNode *node) {
    SecKeyNode *start = static_cast<SecKeyNode *>(this->mapShm());

    bool result = false;
    for (int i = 0; i < this->length; ++i) {
        if (memcmp(start + i, node, sizeof(SecKeyNode)) == 0) {
            memset(start + i, 0, sizeof(SecKeyNode));
            if (this->length - 1 == i) {
                this->length--;
            }
            result = true;
            break;
        }
    }

    this->unMapShm();
    return result;
}

SecKeyShm::~SecKeyShm() {
    shmctl(this->shm_id, IPC_RMID, nullptr);
}
