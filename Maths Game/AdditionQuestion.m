
//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        NSString *firstNumberString = [NSString stringWithFormat:@"%ld", (long)firstNumber];
        NSString *secondNumberString = [NSString stringWithFormat:@"%ld", (long)secondNumber];
        _question = [NSString stringWithFormat:@"%@ + %@ ?",firstNumberString, secondNumberString];
        _answer = firstNumber + secondNumber;
    }
    return self;
}

@end
