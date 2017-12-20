//
//  DPCatcher.m
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "DPCatcher.h"
#import <objc/runtime.h>
@implementation DPCatcher
- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSLog(@"发现野指针%s::%p=>%@",class_getName(self.originalClass),self,NSStringFromSelector(aSelector));
    abort();
    return nil;
}
- (void)dealloc{
    NSLog(@"发现野指针%s::%p=>%@",class_getName(self.originalClass),self,@"dealloc");
}
//- (void)release{
//    NSLog(@"发现野指针%s::%p=>%@",class_getName(self.originalClass),self,@"release");
//    abort();
//}

@end
