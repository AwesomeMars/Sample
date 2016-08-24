//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        NSLog(@"The result is %g",[deskCalc accumulator]);
    }
    return 0;
}


           