//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 MarsCorp. All rights reserved.
// 소스 변경

#import <Foundation/Foundation.h>
@interface ClassA :NSObject
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

@interface ClassB : ClassA
-(void)printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x=%i",x);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b=[[ClassB alloc]init];
        [b initVar];
        [b printVar];
    }
    return 0;
}


           