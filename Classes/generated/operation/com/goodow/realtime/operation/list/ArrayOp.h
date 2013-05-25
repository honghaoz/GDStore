//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/ArrayOp.java
//
//  Created by retechretech on 13-5-25.
//

@protocol EMJsonArray;
@protocol EMJsonValue;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/list/algorithm/ListHelper.h"
#import "com/goodow/realtime/operation/list/algorithm/ListNormalizer.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOp.h"

#define ComGoodowRealtimeOperationListArrayOp_TYPE 11

@interface ComGoodowRealtimeOperationListArrayOp : ComGoodowRealtimeOperationListAlgorithmListOp {
}

+ (int)TYPE;
- (id)init;
- (id)initWithBOOL:(BOOL)isInsert
           withInt:(int)idx
   withEMJsonArray:(id<EMJsonArray>)list
           withInt:(int)initLength;
- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized;
- (int)getType;
- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)createListHelper;
- (id<EMJsonArray>)fromJsonWithEMJsonValue:(id<EMJsonValue>)json;
- (NSString *)toJsonWithId:(id<EMJsonArray>)list;
@end

@interface ComGoodowRealtimeOperationListArrayOp_ArrayAppender : NSObject < ComGoodowRealtimeOperationListAlgorithmListNormalizer_Appender > {
 @public
  id<EMJsonArray> array_;
}

@property (nonatomic, retain) id<EMJsonArray> array;

- (void)appendWithId:(id<EMJsonArray>)list;
- (id<EMJsonArray>)flush;
- (id)init;
@end

@interface ComGoodowRealtimeOperationListArrayOp_ArrayHelper : NSObject < ComGoodowRealtimeOperationListAlgorithmListHelper > {
}

- (ComGoodowRealtimeOperationListAlgorithmListNormalizer *)createNormalizer;
- (int)lengthWithId:(id<EMJsonArray>)list;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)newOp OBJC_METHOD_FAMILY_NONE;
- (BOOL)startsWithWithId:(id<EMJsonArray>)list
                  withId:(id<EMJsonArray>)prefix;
- (id<EMJsonArray>)subsetWithId:(id<EMJsonArray>)list
                        withInt:(int)beginIdx;
- (id<EMJsonArray>)subsetWithId:(id<EMJsonArray>)list
                        withInt:(int)beginIdx
                        withInt:(int)endIdx;
- (id)init;
@end

@interface ComGoodowRealtimeOperationListArrayOp_ArrayNormalizer : ComGoodowRealtimeOperationListAlgorithmListNormalizer {
}

- (id)init;
- (BOOL)isEmptyWithId:(id<EMJsonArray>)list;
@end
