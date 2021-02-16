//
//  ViewController.m
//  blocksAndGCD
//
//  Created by Vitaly Prosvetov on 16.02.2021.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t myQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(myQueue, ^{
        CGFloat sum = [Calculator calculateWith:OperationSum firstNumber: 1 secondNumber: 2];
        NSLog(@"Sum: %.2f", sum);
    });
    
    dispatch_async(myQueue, ^{
        CGFloat subtracting = [Calculator calculateWith:OperationSubtracting firstNumber: 1 secondNumber: 2];
        NSLog(@"Subtracting: %.2f", subtracting);
    });
    
    dispatch_async(myQueue, ^{
        CGFloat multiplication = [Calculator calculateWith:OperationMultiplication firstNumber: 1 secondNumber: 2];
        NSLog(@"Multiplication: %.2f", multiplication);
    });
    
    dispatch_async(myQueue, ^{
        CGFloat devision = [Calculator calculateWith:OperationDivision firstNumber: 1 secondNumber: 2];
        NSLog(@"Devision: %.2f", devision);
    });
}

@end
