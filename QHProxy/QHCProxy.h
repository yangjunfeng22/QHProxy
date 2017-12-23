//
//  QHCProxy.h
//  QHProxy
//
//  Created by yang on 2017/12/22.
//  Copyright © 2017年 dada Company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QHCProxy : NSProxy

+ (id)proxyForObject:(id)obj;

// 可以变身成任何其他对象。
- (void)transformObjc:(NSObject *)objc;

@end
