//
//  testView.h
//  Test_hash
//
//  Created by PeggyWoo on 17/1/6.
//  Copyright © 2017年 com.QKHL. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AProtocol <NSObject>

- (void)runString:(NSString *)str;

@end

@interface testView : UIView

- (void)addObserver:(id)observer;

@end
