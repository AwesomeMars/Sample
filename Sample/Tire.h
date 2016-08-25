//
//  Tire.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString *name;
}
-(NSString *) name;
-(void) run;
-(void) stop;
@end
