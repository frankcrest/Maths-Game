
//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        _leftValue = firstNumber;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        _rightValue = secondNumber;
        NSString *firstNumberString = [NSString stringWithFormat:@"%ld", (long)firstNumber];
        NSString *secondNumberString = [NSString stringWithFormat:@"%ld", (long)secondNumber];
        _question = [NSString stringWithFormat:@"%@ + %@ ?",firstNumberString, secondNumberString];
        _answer = firstNumber + secondNumber;
        _startTime = [NSDate date];
    }
    return self;
}

-(NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)calculateTimeDifference{
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
