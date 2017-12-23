//
//  QHCProxy.m
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import "QHCProxy.h"

@interface QHCProxy ()
{
    id _object;
}

+ (id)proxyForObject:(id)obj;

@end

@implementation QHCProxy

+ (id)proxyForObject:(id)obj
{
    QHCProxy *instance = [QHCProxy alloc];
    instance->_object = obj;
    
    return instance;
}

- (void)transformObjc:(NSObject *)objc
{
    //复制对象
    self->_object = objc;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSMethodSignature *signature = [_object methodSignatureForSelector:sel];
    if (!signature) {
        signature = [super methodSignatureForSelector:sel];
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
//    if ([_object respondsToSelector:invocation.selector])
//    {
//        NSString *selectorName = NSStringFromSelector(invocation.selector);
//
//        NSLog(@"Before calling \"%@\".", selectorName);
//        [invocation invokeWithTarget:_object];
//        NSLog(@"After calling \"%@\".", selectorName);
//    }
    
    if (_object && [_object respondsToSelector:invocation.selector])
    {
        if ([_object isKindOfClass:[NSClassFromString(@"NSObject") class]])
        {
            // 这里应该通过invocation拿取参数列表。
            //拦截参数 Argument:表示的是方法的参数  index:表示的是方法参数的下标
            NSString *str = @"拦截消息";
            [invocation setArgument:&str atIndex:2];
        }
        //开始调用方法
        [invocation invokeWithTarget:_object];
    }
}

@end
