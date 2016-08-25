//
//  Car.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id)init
{
    self = [super init];
    if(self){
        engine = [[Engine alloc]init];
        tire = [[Tire alloc]init];
    }
    return self;
}
    
-(void) runCar
{
    [engine startEngine];
    [tire run];
    
    Engine *newEngine = [engine getNewEngine];
    [newEngine startEngine];
//    [newEngine release];
}

-(void) stopCar
{
    [engine stopEngine];
    [tire stop];
}
-(void) setTire:(Tire *)newTire
{
    if(tire)//기존 객체가 있으면 릴리즈
    {
        [tire release];
    }
    tire = [newTire retain];
}

-(void)dealloc
{
    [tire release];
    [super dealloc];
}
@end
