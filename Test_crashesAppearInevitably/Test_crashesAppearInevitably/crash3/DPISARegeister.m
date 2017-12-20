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

void DPFree(void *p){
    size_t memSize = malloc_size(p);
    if(memSize > sDPCatchSize){
        id obj = (__bridge id)p;
        Class originClass = object_getClass(obj);
        if(originClass && CFSetContainsValue(regeisteredClasses, (__bridge const void *)(originClass))){
            memset((__bridge void *)obj, 0x55, memSize);
            memcpy((__bridge void *)obj, &sDPCatchISA, sizeof(void *));
            
            DPCatcher *bug=(__bridge DPCatcher *)p;
            bug.originalClass = originClass;
        }
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
    
    sDPCatchISA = object_getClass(@"DPCatcher");
    sDPCatchSize = class_getInstanceSize(sDPCatchISA);
    
    rebind_symbols((struct rebinding[1]){"free",DPFree,(void *)&orig_free}, 1);
}

@implementation DPISARegeister

@end
