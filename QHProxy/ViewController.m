//
//  ViewController.m
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import "ViewController.h"
#import <BlocksKit/BlocksKit.h>
#import "QHViewController.h"
#import "QHCProxy.h"

@interface ViewController () <QHViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Proxy";
    
    [self bk_associateValue:@"123" withKey:@"key"];
    
//    dispatch_semaphore_t sem = dispatch_semaphore_create(0);
    
//    NSURL *tUrl = [NSURL URLWithString:@"https://www.baidu.com"];
//    NSURL *url = [QHCProxy proxyForObject:tUrl];
//
//    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
////        dispatch_semaphore_signal(sem);
//    }];
//
//    [task resume];
//     dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)clickAction:(id)sender
{
    NSString *value = [self valueForKey:@"_key"];
    
    QHViewController *qhViewController = [[QHViewController alloc] init];
    qhViewController.delegate = self;
    [self presentViewController:qhViewController animated:YES completion:NULL];
}

#pragma mark - QHViewControllerDelegate
- (void)tapTest:(UIViewController *)viewController
{
    [viewController dismissViewControllerAnimated:YES completion:NULL];
}


@end
