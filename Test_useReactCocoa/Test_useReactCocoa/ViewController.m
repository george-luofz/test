//
//  ViewController.m
//  Test_useReactCocoa
//
//  Created by 罗富中 on 2017/12/28.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController ()
@property(nonatomic,nullable,strong)   NSString        *username;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test1];
}

- (void)test1{
//    @weakify(self);
    [RACObserve(self,username) subscribeNext:^(NSString *newName) {
        NSLog(@"%@", newName);
    }];
}

@end
