//
//  QHViewController+blockKits.h
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import "QHViewController.h"

@interface QHViewController (blockKits)

@property (nonatomic, copy) void(^bk_tapTestBlock)(QHViewController *);

@end
