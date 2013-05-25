//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/algorithm/ListHelper.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeOperationListAlgorithmListNormalizer;
@class ComGoodowRealtimeOperationListAlgorithmListOp;

#import "JreEmulation.h"

@protocol ComGoodowRealtimeOperationListAlgorithmListHelper < NSObject >
- (ComGoodowRealtimeOperationListAlgorithmListNormalizer *)createNormalizer;
- (int)lengthWithId:(id)list;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)newOp OBJC_METHOD_FAMILY_NONE;
- (BOOL)startsWithWithId:(id)list
                  withId:(id)prefix;
- (id)subsetWithId:(id)list
           withInt:(int)beginIdx;
- (id)subsetWithId:(id)list
           withInt:(int)beginIdx
           withInt:(int)endIdx;
@end
