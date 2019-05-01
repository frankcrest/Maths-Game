//
//  QuestionManager.h
//  Maths Game
//
//  Created by Frank Chen on 2019-05-01.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray* questions;

-(NSString*)timeOutput;

@end

NS_ASSUME_NONNULL_END
