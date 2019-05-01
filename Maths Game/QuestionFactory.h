//
//  QuestionFactory.h
//  Maths Game
//
//  Created by Frank Chen on 2019-05-01.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

-(Question*)generateRandomQuestion;

@property NSArray *questionSubclassNames;

@end

NS_ASSUME_NONNULL_END
