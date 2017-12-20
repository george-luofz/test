//
//  DSQueue.h
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#ifndef DSQueue_h
#define DSQueue_h

#include <stdio.h>

struct Node{
    void *value;
    struct Node *next;
};

struct DSQueue{
    int length;
    struct Node *header;
    struct Node *last;
};
struct DSQueue* di_queue_init(void);
void ds_queue_put(struct DSQueue *queue,void *p);
void *ds_queue_get(struct DSQueue *queue);
int ds_queue_length(struct DSQueue *queue);

#endif /* DSQueue_h */

//typedef  void * QElemType;
//typedef struct QNode
//{
//    QElemType   data;   /*数据域*/
//    struct QNode   * next;   /*指针域*/
//}QNode, *QueuePtr;
////定义队列结构
//typedef struct
//{
//    QueuePtr front;
//    QueuePtr rear;
//}LinkQueue;
//
//typedef enum Status {
//    enum1,
//    enum2,
//} Status;

