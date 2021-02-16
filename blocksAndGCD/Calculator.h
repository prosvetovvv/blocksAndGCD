//
//  Calculator.h
//  blocksAndGCD
//
//  Created by Vitaly Prosvetov on 16.02.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

enum Operation {
    OperationSum,
    OperationSubtracting,
    OperationMultiplication,
    OperationDivision
};
typedef enum Operation Operation;

typedef CGFloat (^ArithmeticOperation)(CGFloat, CGFloat);

@interface Calculator : NSObject

+ (CGFloat)calculateWith: (Operation)operation firstNumber: (CGFloat)firstNumber secondNumber: (CGFloat)secondNumber;

@end

NS_ASSUME_NONNULL_END
