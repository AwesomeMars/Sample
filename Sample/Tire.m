//
//  Tire.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "Tire.h"

@implementation Tire
-(id)init
{
    self = [super init];
    if(self){
        name = @"Normal Tire";
    }
    return self;
}
-(NSString *)name
{
    return name;
}
-(void) run
{
    NSLog(@"run");
}
-(void) stop;
{
    NSLog(@"stop");
}
@end
