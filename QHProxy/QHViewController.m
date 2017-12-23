//
//  QHViewController.m
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import "QHViewController.h"

@interface QHViewController ()

@end

@implementation QHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clickAction:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(tapTest:)]) {
        [self.delegate tapTest:self];
    }
}

@end
