//
//  IntegralCalc.h
//  CoreMotionSample
//
//  Created by yokota on 2014/07/14.
//  Copyright (c) 2014年 Individual. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IntegralCalc : NSObject

+ (double)integralA:(NSArray*)series :(int)width;
+ (double)integralB:(NSArray*)series :(int)width;
+ (double)integralC:(double)bef :(double)aft :(double)width;
@end
