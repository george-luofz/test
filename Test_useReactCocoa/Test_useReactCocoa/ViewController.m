//
//  ViewController.m
//  Test_useReactCocoa
//
//  Created by 罗富中 on 2017/12/28.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "ViewController.h"
//#import <ReactiveCocoa/ReactiveCocoa.h>
#import <ReactiveObjC/ReactiveObjC.h>
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
//    [RACObserve(self,username) subscribeNext:^(NSString *newName) {
//        NSLog(@"%@", newName);
//    }];
//    // 1.创建信号
    RACSignal *siganl = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        // block调用时刻：每当有订阅者订阅信号，就会调用block。
        
        // 2.发送信号
        [subscriber sendNext:@1];
        
        // 如果不在发送数据，最好发送信号完成，内部会自动调用[RACDisposable disposable]取消订阅信号。
        [subscriber sendCompleted];
        
        return [RACDisposable disposableWithBlock:^{
            
            // block调用时刻：当信号发送完成或者发送错误，就会自动执行这个block,取消订阅信号。
            
            // 执行完Block后，当前信号就不在被订阅了。
            
            NSLog(@"信号被销毁");
            
        }];
    }];
    
    // 3.订阅信号,才会激活信号.
    [siganl subscribeNext:^(id x) {
        // block调用时刻：每当有信号发出数据，就会调用block.
        NSLog(@"接收到数据:%@",x);
    }];
    
}

@end
