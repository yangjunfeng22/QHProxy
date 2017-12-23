//
//  QHViewController+blockKits.m
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import "QHViewController+blockKits.h"
#import "A2DynamicDelegate.h"
#import "NSObject+A2BlockDelegate.h"

#pragma mark Custom delegate

@interface A2DynamicQHViewControllerDelegate : A2DynamicDelegate <QHViewControllerDelegate>

@end

@implementation A2DynamicQHViewControllerDelegate

- (void)tapTest:(UIViewController *)viewController
{
    id realDelegate = self.realDelegate;
    if (realDelegate && [realDelegate respondsToSelector:@selector(tapTest:)])
        [realDelegate tapTest:viewController];
    
    void (^block)(UIViewController *) = [self blockImplementationForMethod:_cmd];
    if (block) block(viewController);
}

@end

@implementation QHViewController (blockKits)
@dynamic bk_tapTestBlock;

+ (void)load
{
    @autoreleasepool {
        [self bk_registerDynamicDelegate];
        [self bk_linkDelegateMethods:@{@"bk_tapTestBlock": @"tapTest:" }];
    }
}

@end
