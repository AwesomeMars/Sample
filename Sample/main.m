//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 MarsCorp. All rights reserved.
// 소스 변경

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Engine *engine = [[Engine alloc] init];
//        NSLog(@"Name = %@", [engine name]); //%@는 객체 타입 출력시 사용

        Car *car = [[Car alloc] init];  //Car : 1
   
        Tire *newTire = [[Tire alloc] init]; //Tire : 1
        [car setTire: newTire]; // Car : 1 Tire : 2
        [newTire release]; //Car : 1 Tire : 1
        
        [car runCar]; //Car : 1 Tire:1
        [car release]; //Car : 0 Tire : 0
        
        
        //[car release]; //더이상 필요없을 때 메모리 위치(retain counter)를 -1 해준다.

//        [car stopCar];
//        
//        Car *car2 = car;
//        [car2 runCar];
        
        
    }
    return 0;
}


           