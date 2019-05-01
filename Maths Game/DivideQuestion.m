//
//  DivideQuestion.m
//  Maths Game
//
//  Created by Frank Chen on 2019-05-01.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "DivideQuestion.h"

@implementation DivideQuestion

-(void)generateQuestion{
    
    super.question = [NSString stringWithFormat:@"%ld / %ld", [super leftValue],[super rightValue]];
    super.answer = [super leftValue] / [super rightValue];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

@end
