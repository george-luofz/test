//
//  DPISARegeister.m
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "DPISARegeister.h"
#import <CoreFoundation/CoreFoundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import <stdio.h>
#import "DPCatcher.h"
#import "fishhook.h"

CFMutableSetRef regeisteredClasses;
Class sDPCatchISA;
size_t sDPCatchSize;

static void (*orig_free)(void *);
//将要释放的对象重置其isa指针，对该对象调用某方法时，消息转发会走我们的方法
void DPFree(void *p){
    size_t memSize = malloc_size(p);
    if(memSize > sDPCatchSize){
        id obj = (__bridge id)p;//md，为啥在这崩溃
        Class originClass = object_getClass(obj);
        if(originClass && CFSetContainsValue(regeisteredClasses, (__bridge const void *)(originClass))){
            memset((__bridge void *)obj, 0x55, memSize);
            memcpy((__bridge void *)obj, &sDPCatchISA, sizeof(void *));
            
            DPCatcher *bug=(__bridge DPCatcher *)p;
            bug.originalClass = originClass;
            return;
        }
        memset((__bridge void *)obj, 0x55, memSize);
    }
    
}

void init(void){
    regeisteredClasses = CFSetCreateMutable(NULL, 0, NULL);
    unsigned int count = 0;
    Class *classes = objc_copyClassList(&count);
    
    for(unsigned int i = 0 ;i < count;i++){
        CFSetAddValue(regeisteredClasses, (void *)classes[i]);
    }
    free(classes);
    classes = NULL;
    
    
    sDPCatchISA = object_getClass([DPCatcher new]);
    sDPCatchSize = class_getInstanceSize(sDPCatchISA);
    
    rebind_symbols((struct rebinding[1]){"free",DPFree,(void *)&orig_free}, 1);
}

@implementation DPISARegeister

@end
