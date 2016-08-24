//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 MarsCorp. All rights reserved.
// 소스 변경

#import <Foundation/Foundation.h>



//#########
//Shape
@interface Shape : NSObject
-(void)draw;
@end

@implementation Shape
-(void)draw
{
    NSLog(@"공통 그리기 로직");
}
@end

//#########
//Rectangle
@interface Rectangle : NSObject
-(void)drawRectangle;
@end

@implementation Rectangle
-(void)drawRectangle
{
    NSLog(@"공통 그리기 로직");
    NSLog(@"사각형 그리기");
}
@end
//########
//Circle
@interface Circle : NSObject
-(void)draw;
@end

@implementation Circle
-(void)draw;
{
    NSLog(@"공통 그리기 로직");
    NSLog(@"원 그리기");
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *circle = [[Circle alloc]init];
        [circle draw];
        
        Rectangle *rectangle = [[Rectangle alloc]init];
        [rectangle drawRectangle];
    }
    return 0;
}


           