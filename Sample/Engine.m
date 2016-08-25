//
//  Engine.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "Engine.h"

@implementation Engine
-(id)init{
    //object c 에서는 null 을 nil로 표기
    self = [super init]; //init은 맴버변수를 초기화 하는 목적
    if(self){
        name = @"Normal Engine";
    }
    return self;
}
-(NSString *) name
{
    return name;
}

-(void)startEngine
{
    NSLog(@"startEngine");
}

-(void)stopEngine
{
    NSLog(@"stopEngine");
}

-(Engine *)getNewEngine
{
    Engine *engine = [[Engine alloc] init];
//    [engine release];//의미 없는 코드
//    return engine;
    return [engine autorelease];  //release를 넣을때가 애매해서 오토로 지정.
}
@end
