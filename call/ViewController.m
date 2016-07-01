//
//  ViewController.m
//  call
//
//  Created by nanke on 16/7/1.
//  Copyright © 2016年 nanke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)clickButton1:(UIButton *)sender;
- (IBAction)clickButton2:(UIButton *)sender;
- (IBAction)clickButton3:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//第一种方式：直接拨打电话，不弹选择框
- (IBAction)clickButton1:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"tel://18519719938"];
    [[UIApplication sharedApplication] openURL:url];
}

//第二种方式：私有方法，弹出选择框，可供选择拨打或者取消，但是上架时可能不能通过审核
- (IBAction)clickButton2:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"telprompt://18519719938"];
    [[UIApplication sharedApplication] openURL:url];
}
//第三种方式：弹出选择框，可供选择拨打或者取消，推荐使用这种方式
- (IBAction)clickButton3:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"tel://18519719938"];
    UIWebView *webView = [[UIWebView alloc] init];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:webView];
}
@end
