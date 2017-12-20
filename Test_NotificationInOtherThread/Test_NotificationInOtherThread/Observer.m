//
//  Observer.m
//  Test_NotificationInOtherThread
//
//  Created by 罗富中 on 2017/12/21.
//  Copyright © 2017年 yixia. All rights reserved.
//

#import "Observer.h"

@implementation Observer
- (instancetype)init{
    if(self = [super init]){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(click) name:@"hhhhhh" object:nil];
    }
    return self;
}
-(void)dealloc{
    NSLog(@"dealloc invoked");
}
@end
