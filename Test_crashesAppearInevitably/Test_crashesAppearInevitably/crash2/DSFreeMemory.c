//
//  DSFreeMemory.c
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#include "DSFreeMemory.h"
#include "fishhook.h"
#include <stdlib.h>
#include <malloc/malloc.h>
#include <string.h>
struct DSQueue *_unfreeQueue=NULL;
int unfreeSize = 0;
#define MAX_STEAL_MEM_SIZE 1024*1024*100
#define MAX_STEAL_MEM_NUM 1024*1024*10
#define BATCH_FREE_NUM    100

static void (*orig_free)(void *);
void init_safe_free(void){
    _unfreeQueue = di_queue_init();
    rebind_symbols((struct rebinding[1]){"free",safe_free,(void *)&orig_free}, 1);
}
void safe_free(void *p){
    size_t memSize = malloc_size(p);
    memset(p,0x55,memSize);
    __sync_fetch_and_add(&unfreeSize,memSize);
    ds_queue_put(_unfreeQueue, p);
}
void free_some_mem(size_t freeNum){
    
}
