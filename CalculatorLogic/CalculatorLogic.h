//
//  CalculatorLogic.h
//  CalculatorLogic
//
//  Created by Asad Sayeed on 12/03/25.
//

#import <Foundation/Foundation.h>

//! Project version number for CalculatorLogic.
FOUNDATION_EXPORT double CalculatorLogicVersionNumber;

//! Project version string for CalculatorLogic.
FOUNDATION_EXPORT const unsigned char CalculatorLogicVersionString[];


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
