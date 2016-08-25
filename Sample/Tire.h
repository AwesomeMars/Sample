//
//  Tire.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Car.h"  //차에게 메세지를 호출하기 위해!, 상호참조가 일어나게됨
@class Car; //컴파일러에게 클레스를 사용하게 하기 위해 클래스 명시

@protocol TireDelegate <NSObject>  //약속을 하나 만듬
-(void)stopCar;
@end


@interface Tire : NSObject
{
    NSString *name;
    Car *car;
}
-(NSString *) name;
-(void) run;
-(void) stop;

//-(void)setCar:(Car *)newCar;
//@property(nonatomic, retain) Car *car;  // 이걸로 자주 사용하게 된다. 이걸 사용해서 하자
@property(nonatomic, retain) id <TireDelegate> car;  //약속을 하나 구현해야함
@end
