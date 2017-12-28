//
//  main.m
//  Test_ARMAssembly
//
//  Created by 罗富中 on 2017/12/20.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
int addFunction(int a, int b){
    int c = a + b;
    return c;
}
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
