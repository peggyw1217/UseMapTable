//
//  testView.m
//  Test_hash
//
//  Created by PeggyWoo on 17/1/6.
//  Copyright © 2017年 com.QKHL. All rights reserved.
//

#import "testView.h"

@interface testView ()

@property (nonatomic, strong) NSMapTable * mapTable;
@property (nonatomic, weak) UIButton * BI;

@end

@implementation testView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self addSubview:btn];
    [btn addTarget:self action:@selector(didClick:) forControlEvents:UIControlEventTouchUpInside];
    self.BI = btn;
}

- (void)addObserver:(id)observer
{
    NSString * hashValue = [NSString stringWithFormat:@"%lu",(unsigned long)[observer hash]];
    [self.mapTable setObject:observer forKey:hashValue];
}


- (void)didClick:(UIButton *)btn
{
    for (id<AProtocol> obj in [self.mapTable objectEnumerator].allObjects) {
        if ([obj respondsToSelector:@selector(runString:)]) {
            [obj runString:[NSString stringWithFormat:@"%lu",(unsigned long)btn.tag]];
        }
    }
}

- (NSMapTable *)mapTable
{
    if (!_mapTable) {
        _mapTable = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsStrongMemory valueOptions:NSPointerFunctionsWeakMemory];
    }
    return _mapTable;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
