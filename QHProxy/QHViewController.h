//
//  QHViewController.h
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QHViewControllerDelegate <NSObject>

- (void)tapTest:(UIViewController *)viewController;

@end

@interface QHViewController : UIViewController

@property (weak, nonatomic) id<QHViewControllerDelegate> delegate;




@end
