//
//  LoginService.h
//  Test_useReactCocoa
//
//  Created by 罗富中 on 2017/12/29.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginService : NSObject

- (void)loginWithUsername:(NSString *)userName passwd:(NSString *)passwd completed:(void(^)(BOOL))block;
@end
