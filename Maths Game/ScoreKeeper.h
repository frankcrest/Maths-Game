//
//  ScoreKeeper.h
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property NSInteger numOfCorrectAnswers;
@property NSInteger numOfWrongAnswers;

-(NSString*) scoreString;

@end

NS_ASSUME_NONNULL_END
