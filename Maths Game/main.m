//
//  main.m
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *mathScoreKeeper = [[ScoreKeeper alloc]init];
        while (gameOn) {
            
            
            AdditionQuestion *randomQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@",[randomQuestion question]);
            
//            char userInput[255];
//            fgets(userInput, 255, stdin);
//            NSString *userInputString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
//            NSCharacterSet *newLineChar = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
//            NSString *userInputStringWithoutNewLine = [userInputString stringByTrimmingCharactersInSet:newLineChar];
            
            InputHandler *userInputHandler = [[InputHandler alloc]init];
            NSString *userInputStringWithoutNewLine = [userInputHandler getUserInput];
            
            if ([userInputStringWithoutNewLine isEqualToString:@"quit"]){
                gameOn = NO;
                break;
            }
            
            NSInteger userInputNumber = [userInputStringWithoutNewLine intValue];
        
            if(userInputNumber == [randomQuestion answer]){
                NSLog(@"RIGHT");
                mathScoreKeeper.numOfCorrectAnswers += 1;
                NSLog(@"%@", [mathScoreKeeper scoreString]);
            }else{
                NSLog(@"WRONG");
                mathScoreKeeper.numOfWrongAnswers += 1;
                NSLog(@"%@",[mathScoreKeeper scoreString]);
            }
        }
    }
    return 0;
}
