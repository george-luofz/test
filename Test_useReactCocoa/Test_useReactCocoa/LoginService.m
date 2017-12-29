
//
//  LoginService.m
//  Test_useReactCocoa
//
//  Created by 罗富中 on 2017/12/29.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "LoginService.h"

@implementation LoginService
- (void)loginWithUsername:(NSString *)userName passwd:(NSString *)passwd completed:(void (^)(BOOL))block{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if(block){
            block(YES);
        }
    });
}
@end
