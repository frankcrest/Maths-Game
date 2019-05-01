//
//  QuestionFactory.m
//  Maths Game
//
//  Created by Frank Chen on 2019-05-01.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question*)generateRandomQuestion{
    NSInteger randomInt = arc4random_uniform(4);
    NSString* randomString = _questionSubclassNames[randomInt];
    return [[NSClassFromString(randomString)alloc]init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplyQuestion", @"DivideQuestion"];
    }
    return self;
}

@end
