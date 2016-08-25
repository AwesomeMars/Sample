//
//  Tire.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "Tire.h"
#import "Car.h"  //차에게 메세지를 호출하기 위해!, 상호참조가 일어나게됨 , 구현 쪽에는 임포트 시킴

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
    //문제 발생, 차를 정지시키는 메세지를 만들어보자.
    
//    Car *car = [[car alloc] init];//이런 경우는 새로운 카를 만드는 것임, 이코드는  X
    
    if([_car respondsToSelector:@selector(stopCar)]) {
       [_car stopCar];
    }
    
}

-(void) stop;
{
    NSLog(@"stop");
}
@end
