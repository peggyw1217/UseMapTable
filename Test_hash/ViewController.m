//
//  ViewController.m
//  Test_hash
//
//  Created by PeggyWoo on 17/1/6.
//  Copyright © 2017年 com.QKHL. All rights reserved.
//

#import "ViewController.h"
#import "testView.h"
#import "TestController.h"

@interface ViewController ()<AProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    testView * view = [[testView alloc] init];
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64);
    [self.view addSubview:view];
    [view addObserver:self];
}

- (void)runString:(NSString *)str
{
    NSLog(@"ViewController == %@",str);
    TestController * vc = [[TestController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
