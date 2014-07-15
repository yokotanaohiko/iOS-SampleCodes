//
//  IntegralCalc.m
//  CoreMotionSample
//
//  Created by yokota on 2014/07/14.
//  Copyright (c) 2014年 Individual. All rights reserved.
//

#import "IntegralCalc.h"

@implementation IntegralCalc

//数列とサンプリング幅を入力すると、台形近似の積分結果を返す関数
+ (double)integralA:(NSArray*)series :(int)width
{
    int num = [series count];
    double sum = 0;
    NSNumber *tmpValue=[series objectAtIndex:0];
    sum+=[tmpValue doubleValue]/2;
    for (int i=1; i<num-1; i++) {
        tmpValue = [series objectAtIndex:i];
        sum+=[tmpValue doubleValue];
    }
    tmpValue=[series objectAtIndex:num-1];
    sum+=[tmpValue doubleValue]/2;
    
    return sum*width;
}
//数列とサンプリング幅を入力すると、台形近似の積分結果を返す関数
+ (double)integralB:(NSArray*)series :(double)width
{
    int num = [series count];
    double sum = 0;
    NSNumber *tmpValue=[series objectAtIndex:0];
    sum+=[tmpValue doubleValue];
    for (int i=2; i<num-1; i+=2) {
        tmpValue = [series objectAtIndex:i];
        sum+=2*[tmpValue doubleValue];
    }
    for (int i=1; i<num-1; i+=2) {
        tmpValue = [series objectAtIndex:i];
        sum+=4*[tmpValue doubleValue];
    }
    tmpValue=[series objectAtIndex:num-1];
    sum+=[tmpValue doubleValue];
    
    return sum*width/3;
}

+ (double)integralC:(double)bef :(double)aft :(double)width
{
    return (bef+aft)*width/2;
}

@end
