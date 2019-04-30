//
//  ScoreKeeper.m
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*)scoreString{
    NSInteger totalQuestions = _numOfWrongAnswers + _numOfCorrectAnswers;
    
    NSString* correctAnswerNumberString = [NSString stringWithFormat:@"%ld", _numOfCorrectAnswers];
    NSString* wrongAnswerNumberString = [NSString stringWithFormat:@"%ld", _numOfWrongAnswers];

    float correctAnswerFloat = [[NSNumber numberWithInteger:_numOfCorrectAnswers] floatValue];
    float totalQuestionsFloat = [[NSNumber numberWithInteger:totalQuestions] floatValue];
    
    float percentageCorrect = correctAnswerFloat / totalQuestionsFloat * 100;
    
    NSString* percentageCorrectString = [NSString stringWithFormat:@"%f", percentageCorrect];
    percentageCorrectString = [percentageCorrectString stringByAppendingString:@"%"];
    
    NSString* scoreString = [NSString stringWithFormat:@"score: %@ right, %@ wrong ---- %@", correctAnswerNumberString, wrongAnswerNumberString, percentageCorrectString];
    
    return scoreString;
}

@end
