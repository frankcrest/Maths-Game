//
//  AdditionQuestion.h
//  Maths Game
//
//  Created by Frank Chen on 2019-04-30.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic)NSString* question;
@property(nonatomic) NSInteger answer;
@property (nonatomic)NSDate *startTime;
@property (nonatomic)NSDate *endTime;
-(NSTimeInterval)calculateTimeDifference;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
-(void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
