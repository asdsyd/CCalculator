//
//  Calculator.h
//  CalculatorLogic
//
//  Created by Asad Sayeed on 12/03/25.
//

#ifndef Calculator_h
#define Calculator_h

// Calculator.h
#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// Basic arithmetic methods
+ (double)add:(double)a second:(double)b;
+ (double)subtract:(double)a second:(double)b;
+ (double)multiply:(double)a second:(double)b;
+ (double)divide:(double)a second:(double)b;

// Trigonometric functions (angles in radians)
+ (double)sin:(double)angle;
+ (double)cos:(double)angle;
+ (double)tan:(double)angle;

@end



#endif /* Calculator_h */
