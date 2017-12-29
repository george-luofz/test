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
#import "LoginService.h"
@interface ViewController ()
@property(nonatomic,nullable,strong)   NSString        *username;
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwdField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (strong, nonatomic)        LoginService      *loginService;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.loginBtn.enabled = NO;
    self.loginService = [LoginService new];
//    [self test1];
    [self test2];
}

- (void)test2{
    [self.userNameField.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"x=%@",x);
    }];
    
    // 2.filter 过滤内容
    [[self.userNameField.rac_textSignal filter:^BOOL(NSString * _Nullable value) {
        if(value.length > 3){
            return YES;
        }
        return NO;
    }] subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"filter x=%@",x);
    }];
    // 3.map 源内容映射成新内容
    [[[self.userNameField.rac_textSignal map:^id _Nullable(NSString * _Nullable value) {
        return @(value.length);
    }] filter:^BOOL(NSNumber * _Nullable value) {
        return [value integerValue]>3;
    }] subscribeNext:^(id  _Nullable x) {
        NSLog(@"value >3:%@",x);
    }];
    // 4.格式校验
    // 4.1 用户名
    RACSignal *userNameValidSignal = [self.userNameField.rac_textSignal map:^id _Nullable(NSString * _Nullable value) {
            return @([self isUserNameValid:value]);
        }];
//    [[userNameValidSignal map:^id _Nullable(NSNumber * _Nullable value) {
//        return value.boolValue?[UIColor blueColor]:[UIColor redColor];
//    }] subscribeNext:^(UIColor * _Nullable color) {
//        self.userNameField.backgroundColor = color;
//    }];
    // 4.2密码
    RACSignal *passwdValidSignal = [self.passwdField.rac_textSignal map:^id _Nullable(NSString * _Nullable value) {
        return @([self isPasswdValid:value]);
    }];
    [[passwdValidSignal map:^id _Nullable(NSNumber *  _Nullable value) {
        return value.boolValue?[UIColor yellowColor]:[UIColor redColor];
    }] subscribeNext:^(UIColor  * _Nullable color) {
        self.passwdField.backgroundColor = color;
    }];
    // 5.rac() 将等号右边的返回值绑定到rac指定的属性上
    RAC(self.userNameField,backgroundColor) = [userNameValidSignal map:^id _Nullable(NSNumber * _Nullable value) {
        return value.boolValue?[UIColor blueColor]:[UIColor redColor];
    }];
    
    // 6.combineLastest 将两个事件绑定到一起，相当于&&操作
    RACSignal *combineSignal = [RACSignal combineLatest:@[userNameValidSignal,passwdValidSignal] reduce:^id _Nullable(NSNumber *usernameValid, NSNumber *passwordValid) {
        return @([usernameValid boolValue] && [passwordValid boolValue]);
    }];
    [combineSignal subscribeNext:^(NSNumber *  _Nullable x) {
        self.loginBtn.enabled = [x boolValue];
    }];
    // 7.绑定事件rac_signalForControlEvents
//    [[self.loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
//        NSLog(@"touch clicke");
//    }];
    
//    [[[self.loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside] map:^id _Nullable(__kindof UIControl * _Nullable value) {
//        return [self signInSignal];
//    }] subscribeNext:^(NSNumber  *_Nullable x) {
//        if(x){
//            NSLog(@"login success");
//        }else{
//            NSLog(@"login failed");
//        }
//    }];
    // 8.flattern map，这个可以异步操作
//    [[[self.loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside] flattenMap:^__kindof RACSignal * _Nullable(__kindof UIControl * _Nullable value) {
//        return [self signInSignal];
//    }] subscribeNext:^(NSNumber *  _Nullable x) {
//        NSLog(@"login result:%@",x);
//    }];
    
    // 9.doNext
    [[[[self.loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside] doNext:^(__kindof UIControl * _Nullable x) {
        NSLog(@"do next");
        self.loginBtn.enabled = NO;
        
    }] flattenMap:^__kindof RACSignal * _Nullable(__kindof UIControl * _Nullable value) {
        return [self signInSignal];
    }] subscribeNext:^(id  _Nullable x) {
        NSLog(@"login result and do next");
    }];
}

- (RACSignal *)signInSignal{
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [self.loginService loginWithUsername:self.userNameField.text passwd:self.passwdField.text completed:^(BOOL result) {
            [subscriber sendNext:@(result)];
            [subscriber sendCompleted];
        }];
        return nil;
    }];
}
- (BOOL)isUserNameValid:(NSString *)userName{
    if(userName.length >5 && userName.length<12){
        return YES;
    }
    return NO;
}
- (BOOL)isPasswdValid:(NSString *)passwd{
    if(passwd.length==4){
        return YES;
    }
    return NO;
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
