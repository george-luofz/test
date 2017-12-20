//
//  DSQueue.c
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#include "DSQueue.h"
#include <malloc/malloc.h>
// 不加这个会报错
#include <stdlib.h>
struct DSQueue* di_queue_init(void){
    struct DSQueue *queue = (struct DSQueue *)malloc(sizeof(struct DSQueue));
    // 1.初始化队列
    queue->header = queue->last = NULL;
//    queue->header->next = NULL;
    return queue;
}

void ds_queue_put(struct DSQueue *queue,void *p){
    if(p == NULL) return;
    struct Node *node = (struct Node *)malloc(sizeof(struct Node));
    node->value = p;
    node->next = NULL;
    // 如果是空
    if(queue->last == NULL){
        queue->last = node;
        queue->header = node;
        return;
    }
    queue->last->next = node;
    queue->last=node;
}
void *ds_queue_get(struct DSQueue *queue){
    // 1.如果是空
    if(queue->header == queue->last) return NULL;
    // 2.如果就一个
    struct Node *node = queue->header;
    queue->header = queue->header->next;
    
    if(queue->header == NULL){
        queue->header=queue->last;
        queue->header->next = NULL;
    }
    return node->value;
}


//Status initQueue(LinkQueue *Q)
//{
//    Q->front = Q->rear = (QueuePtr)malloc(sizeof(QNode));
//    if(!Q->front) return TRUE;
//    Q->front->next = NULL;
//    return TRUE;
//}

