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
{
    float x, y;
    float w, h;
    NSString *color;
}
-(id)init{
    self = [super init];
    if(self){
        x=0;
        y=0;
        w=10;
        h=10;
        color = @"Black";
    }
    return self;
    
}
-(void)setX:(float)newX withY:(float)newY
{
    x = newX;
    y = newY;
}
- (void)setWidth:(float)newW withHeight:(float)newH
{
    w = newW;
    h = newH;
}
-(void)setColor:(NSString*)newColor
{
    color = newColor;
}
-(void)draw
{
    NSLog(@"공통 그리기 로직");
    NSLog(@"X= %g, Y=%g, W=%g, H=%g", x, y, w, h);
    NSLog(@"Color = %@", color);
}
@end



//#########
//Rectangle
@interface Rectangle : Shape
@end

@implementation Rectangle
-(void)draw
{
    [super draw];
    NSLog(@"사각형 그리다.");
}
@end
//########
//Circle
@interface Circle : Shape
@end

@implementation Circle
-(void)draw
{
    [super draw];    //원은 draw와 상관없어 !! 뺄 경우 공통 그리기 로직은 호출을 안함.
    NSLog(@"원 그리다.");
}
@end


//########
//##Super Circle
@interface SuperCircle : Circle
@end
@implementation SuperCircle
-(void)draw
{
    [super draw];
    NSLog(@"빤짝~ 빤짝");
    
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *circle = [[Circle alloc]init];    // init은 맴버 변수의 초기화를 주로, 수동메모리 관리 시에는 dealloc이라는 메소드도 쓴다.
        Rectangle *rectangle = [[Rectangle alloc]init];
        SuperCircle *sCircle = [[SuperCircle alloc]init];
        
//        [circle setWidth:100 withHeight:100];
//        [circle setX:100 withY:200];
//        [circle setColor:@"RED"];
        
        [sCircle draw];
        [rectangle setWidth:10 withHeight:10];
        [rectangle setX:10 withY:20];
        [rectangle setColor:@"BLUE"];
        
        [circle draw];
        [rectangle draw];
        
        //다음시간, 동적 바인딩을 통해서!!
    }
    return 0;
}


           