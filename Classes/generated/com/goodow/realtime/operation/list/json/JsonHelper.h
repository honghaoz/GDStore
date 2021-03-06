//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonHelper.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeOperationListJsonJsonHelper_H_
#define _ComGoodowRealtimeOperationListJsonJsonHelper_H_

@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/list/ListHelper.h"

#define ComGoodowRealtimeOperationListJsonJsonHelper_TYPE 0

@interface ComGoodowRealtimeOperationListJsonJsonHelper : NSObject < ComGoodowRealtimeOperationListListHelper > {
}

- (int)lengthWithId:(id<ComGoodowRealtimeJsonJsonArray>)values;

- (id<ComGoodowRealtimeJsonJsonArray>)parseValuesWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized;

- (id<ComGoodowRealtimeJsonJsonArray>)replaceWithWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                                withInt:(int)startIndex
                                                withInt:(int)length
                                                 withId:(id<ComGoodowRealtimeJsonJsonArray>)replacement;

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                           withInt:(int)startIndex
                                           withInt:(int)length;

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                           withInt:(int)startIndex0
                                           withInt:(int)length0
                                           withInt:(int)startIndex1
                                           withInt:(int)length1;

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values0
                                           withInt:(int)startIndex0
                                           withInt:(int)length0
                                            withId:(id<ComGoodowRealtimeJsonJsonArray>)values1
                                           withInt:(int)startIndex1
                                           withInt:(int)length1;

- (id<ComGoodowRealtimeJsonJsonArray>)toJsonWithId:(id<ComGoodowRealtimeJsonJsonArray>)values;

- (id)init;

@end

FOUNDATION_EXPORT BOOL ComGoodowRealtimeOperationListJsonJsonHelper_initialized;
J2OBJC_STATIC_INIT(ComGoodowRealtimeOperationListJsonJsonHelper)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeOperationListJsonJsonHelper, TYPE, int)

FOUNDATION_EXPORT ComGoodowRealtimeOperationListJsonJsonHelper *ComGoodowRealtimeOperationListJsonJsonHelper_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeOperationListJsonJsonHelper, INSTANCE_, ComGoodowRealtimeOperationListJsonJsonHelper *)

@interface ComGoodowRealtimeOperationListJsonJsonHelper_$1 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$array_;
}

- (void)callWithInt:(int)index
             withId:(id)value;

- (id)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeOperationListJsonJsonHelper_$1_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationListJsonJsonHelper_$1, val$array_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeOperationListJsonJsonHelper_$2 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$json_;
}

- (void)callWithInt:(int)index
             withId:(id)value;

- (id)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeOperationListJsonJsonHelper_$2_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationListJsonJsonHelper_$2, val$json_, id<ComGoodowRealtimeJsonJsonArray>)

#endif // _ComGoodowRealtimeOperationListJsonJsonHelper_H_
