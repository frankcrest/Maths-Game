//
//  QuestionManager.m
//  Maths Game
//
//  Created by Frank Chen on 2019-05-01.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString*)timeOutput{
    NSString* outputString = @"";
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    for (Question* question in _questions) {
        totalTime += question.calculateTimeDifference;
    }
    averageTime = totalTime / [_questions count];
    outputString = [NSString stringWithFormat:@"total time: %ds, average time: %ds",(int)totalTime, (int)averageTime];
    return outputString;
}

@end
