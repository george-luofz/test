//
//  ViewController.m
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/18.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "ViewController.h"
#import <malloc/malloc.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc] init];
    [view release];
    
    for(int i = 0; i< 10;i++){
        UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
        [self.view addSubview:testView];
        
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    }
    [view setNeedsLayout];
    

}





// 0x000000010110e100
@end
