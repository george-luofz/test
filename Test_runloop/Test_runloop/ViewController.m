//
//  ViewController.m
//  Test_runloop
//
//  Created by 罗富中 on 2017/12/16.
//  Copyright © 2017年 yixia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property(nonatomic,nullable,strong) NSTimer    *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize  = CGSizeMake(375, 1000);
    [self test_runloopMode];
}

- (void)test_runloopMode{
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"timer invoked");
    }];
//    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

@end
