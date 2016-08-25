//
//  Car.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"


@interface Car : NSObject <TireDelegate>
{
    Engine *engine;
    Tire *tire;
}
-(void)runCar;
-(void)stopCar;
-(void) setTire:(Tire *)newTire;
@end

//property대체 시
//@interface Car : NSObject
//{
//    Engine *engine;
////    Tire *tire;
//}
//-(void)runCar;
//-(void)stopCar;
////-(void) setTire:(Tire *)newTire;
//@property (nonatomic, weak) Tire *tire;   //retain 과 같은 역할이 strong, assign 같은 역할이 weak
//@end
