//
//  TestController.m
//  Test_hash
//
//  Created by PeggyWoo on 17/1/9.
//  Copyright © 2017年 com.QKHL. All rights reserved.
//

#import "TestController.h"
#import "testView.h"

@interface TestController ()

@end

@implementation TestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    testView * view = [[testView alloc] init];
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64);
    [self.view addSubview:view];
    [view addObserver:self];
}

- (void)runString:(NSString *)str
{
    NSLog(@"Test == %lu",(unsigned long)([str integerValue]+1));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
