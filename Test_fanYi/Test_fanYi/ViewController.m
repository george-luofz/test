//
//  ViewController.m
//  Test_fanYi
//
//  Created by 罗富中 on 2017/12/29.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test1];
}

- (void)test1{
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSString *urlStr = @"http://fanyi.baidu.com/#zh/wyw/%E6%9C%89%E4%BA%BA%E5%90%91%E9%A2%86%E5%AF%BC%E6%8F%90%E8%AE%AE%EF%BC%8C%E6%9D%AD%E5%B7%9E%E6%9C%89%E4%B8%AA%E6%B5%B7%E5%8D%9A%E7%BF%BB%E8%AF%91%E7%A4%BE%EF%BC%8C%E8%80%81%E6%9D%BF%E5%8F%AB%E9%A9%AC%E4%BA%91%EF%BC%8C%E6%AD%A4%E4%BA%BA%E4%B8%8D%E4%BB%85%E8%8B%B1%E6%96%87%E6%B0%B4%E5%B9%B3%E5%BE%88%E9%AB%98%EF%BC%8C%E4%B8%94%E6%93%85%E9%95%BF%E4%BA%A4%E9%99%85%E6%B2%9F%E9%80%9A%EF%BC%8C%E6%88%96%E5%8F%AF%E5%A7%94%E4%BB%A5%E9%87%8D%E4%BB%BB";
    [[session dataTaskWithURL:[NSURL URLWithString:urlStr] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"request finished,resp:%@\nerror:%@",response.description,error);
    }] resume];
}

@end
