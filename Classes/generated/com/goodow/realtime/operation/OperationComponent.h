//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/OperationComponent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeOperationOperationComponent_H_
#define _ComGoodowRealtimeOperationOperationComponent_H_

@class IOSObjectArray;
@protocol ComGoodowRealtimeJsonJsonElement;

#import "JreEmulation.h"
#include "com/goodow/realtime/operation/Operation.h"

@interface ComGoodowRealtimeOperationOperationComponent : NSObject < ComGoodowRealtimeOperationOperation > {
}

- (id<ComGoodowRealtimeOperationOperation>)transformWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                                                withBoolean:(BOOL)applied;

- (IOSObjectArray *)transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)other
                                                                           withBoolean:(BOOL)applied;

- (NSString *)getMessageWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                    withBoolean:(BOOL)applied;

- (void)applyWithId:(id)param0;

- (id<ComGoodowRealtimeOperationOperation>)invert;

- (id<ComGoodowRealtimeJsonJsonElement>)toJson;

- (id)init;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeOperationOperationComponent_init() {}

#endif // _ComGoodowRealtimeOperationOperationComponent_H_
