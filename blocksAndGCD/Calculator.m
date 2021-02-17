//
//  Calculator.m
//  blocksAndGCD
//
//  Created by Vitaly Prosvetov on 16.02.2021.
//

#import "Calculator.h"

@implementation Calculator

ArithmeticOperation sum = ^(CGFloat value1, CGFloat value2) {
    return value1 + value2;
};

ArithmeticOperation subtracting = ^(CGFloat value1, CGFloat value2) {
    return value1 - value2;
};

ArithmeticOperation multiplication = ^(CGFloat value1, CGFloat value2) {
    return value1 * value2;
};

ArithmeticOperation devision = ^(CGFloat value1, CGFloat value2) {
    if (value2 == 0) {
        NSLog(@"Error");
        return 0.0;
    } else {
        return value1 / value2;
    }
};

+(CGFloat)calculateWith:(Operation)operation firstNumber:(CGFloat)firstNumber secondNumber:(CGFloat)secondNumber {
    switch (operation) {
        case OperationSum:
            return sum(firstNumber, secondNumber);
            break;
        case OperationSubtracting:
            return subtracting(firstNumber, secondNumber);
        case OperationMultiplication:
            return multiplication(firstNumber, secondNumber);
            break;
        case OperationDivision:
            return devision(firstNumber, secondNumber);
            break;
    }
}

@end
