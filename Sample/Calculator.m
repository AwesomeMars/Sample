//
//  Calculator.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void)clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void)add:(double)value
{
    accumulator += accumulator;
    
}

-(void)subtract:(double)value
{
    accumulator -=accumulator;
    
}

-(void)multiply:(double)value
{
    accumulator *= accumulator;
}

-(void)divide:(double)value
{
    accumulator /=value;
}
@end
