//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/map/MapOp.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeUtilPair;
@protocol EMJsonArray;
@protocol EMJsonValue;
@protocol ElementalUtilMapFromStringTo;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "com/goodow/realtime/operation/map/MapTarget.h"

#define ComGoodowRealtimeOperationMapMapOp_TYPE 8

@interface ComGoodowRealtimeOperationMapMapOp : NSObject < ComGoodowRealtimeOperationOperation, ComGoodowRealtimeOperationMapMapTarget > {
 @public
  id<ElementalUtilMapFromStringTo> components_;
  NSString *id__;
}

@property (nonatomic, retain) id<ElementalUtilMapFromStringTo> components;
@property (nonatomic, copy) NSString *id_;

+ (int)TYPE;
+ (NSString *)INSERT;
+ (NSString *)DELETE;
- (id)init;
- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized;
- (void)applyWithId:(id<ComGoodowRealtimeOperationMapMapTarget>)target;
- (ComGoodowRealtimeOperationMapMapOp *)composeWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op;
- (BOOL)isEqual:(id)obj;
- (NSString *)getId;
- (int)getType;
- (ComGoodowRealtimeOperationMapMapOp *)invert;
- (BOOL)isNoOp;
- (void)setIdWithNSString:(NSString *)id_;
- (NSString *)description;
- (ComGoodowRealtimeUtilPair *)transformWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)clientOp;
- (ComGoodowRealtimeOperationMapMapOp *)updateWithNSString:(NSString *)key
                                           withEMJsonValue:(id<EMJsonValue>)oldValue
                                           withEMJsonValue:(id<EMJsonValue>)newValue;
- (ComGoodowRealtimeOperationMapMapOp *)copy__ OBJC_METHOD_FAMILY_NONE;
- (ComGoodowRealtimeOperationMapMapOp *)newInstance OBJC_METHOD_FAMILY_NONE;
- (ComGoodowRealtimeOperationMapMapOp *)excludeWithComGoodowRealtimeOperationMapMapOp:(ComGoodowRealtimeOperationMapMapOp *)clientOp;
- (NSString *)toJsonWithNSString:(NSString *)key
                 withEMJsonValue:(id<EMJsonValue>)oldVal
                 withEMJsonValue:(id<EMJsonValue>)newVal;
@end
