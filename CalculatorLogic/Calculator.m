//
//  Calculator.m
//  CalculatorLogic
//
//  Created by Asad Sayeed on 12/03/25.
//

#import <Foundation/Foundation.h>

// Calculator.m
#import "Calculator.h"
#import <math.h>

@implementation Calculator

+ (double)add:(double)a second:(double)b {
    return a + b;
}

+ (double)subtract:(double)a second:(double)b {
    return a - b;
}

+ (double)multiply:(double)a second:(double)b {
    return a * b;
}

+ (double)divide:(double)a second:(double)b {
    if (b == 0) {
        // Return NaN (Not a Number) if attempting to divide by zero
        return NAN;
    }
    return a / b;
}

+ (double)sin:(double)angle {
    return sin(angle);
}

+ (double)cos:(double)angle {
    return cos(angle);
}

+ (double)tan:(double)angle {
    return tan(angle);
}

@end

