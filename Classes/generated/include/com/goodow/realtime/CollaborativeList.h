//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/CollaborativeList.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeOperationRealtimeOperation;
@class GDRIndexReference;
@class GDRModel;
@class IOSObjectArray;
@class JavaLangStringBuilder;
@protocol EMJsonArray;
@protocol GDREventHandler;
@protocol JavaUtilComparator;
@protocol JavaUtilSet;

#import "JreEmulation.h"
#import "com/goodow/realtime/CollaborativeObject.h"
#import "com/goodow/realtime/operation/list/algorithm/ListTarget.h"

@interface GDRCollaborativeList : GDRCollaborativeObject {
 @public
  id<EMJsonArray> snapshot_;
}

@property (nonatomic, strong) id<EMJsonArray> snapshot;

- (id)initWithGDRModel:(GDRModel *)model;
- (void)addValuesAddedListenerWithGDREventHandler:(id<GDREventHandler>)handler;
- (void)addValuesRemovedListenerWithGDREventHandler:(id<GDREventHandler>)handler;
- (void)addValuesSetListenerWithGDREventHandler:(id<GDREventHandler>)handler;
- (IOSObjectArray *)__asArray;
- (void)clear;
- (id)get:(int)index;
- (int)indexOfWithId:(id)value
withJavaUtilComparator:(id<JavaUtilComparator>)opt_comparator;
- (void)insert:(int)index value:(id)value;
- (void)insertAllWithInt:(int)index
       withNSObjectArray:(IOSObjectArray *)values;
- (int)lastIndexOfWithId:(id)value
  withJavaUtilComparator:(id<JavaUtilComparator>)opt_comparator;
- (int)length;
- (int)push:(id)value;
- (void)pushAllWithNSObjectArray:(IOSObjectArray *)values;
- (GDRIndexReference *)registerReference:(int)index canBeDeleted:(BOOL)canBeDeleted;
- (void)remove:(int)index;
- (void)removeListListenerWithGDREventHandler:(id<GDREventHandler>)handler;
- (void)removeRangeFrom:(int)startIndex to:(int)endIndex;
- (BOOL)removeValue:(id)value;
- (void)replaceRangeWithInt:(int)index
          withNSObjectArray:(IOSObjectArray *)values;
- (void)set:(int)index value:(id)value;
- (void)setLength:(int)length;
- (void)consumeWithComGoodowRealtimeOperationRealtimeOperation:(ComGoodowRealtimeOperationRealtimeOperation *)operation;
- (IOSObjectArray *)toInitialization;
- (void)toStringWithJavaUtilSet:(id<JavaUtilSet>)seen
      withJavaLangStringBuilder:(JavaLangStringBuilder *)sb;
- (int)__ocniCompare__WithId:(id)comparator
                      withId:(id)object1
                      withId:(id)object2;
- (void)checkIndexWithInt:(int)index
                 withBOOL:(BOOL)endBoundIsValid;
- (int)compareWithJavaUtilComparator:(id<JavaUtilComparator>)comparator
                              withId:(id)object1
                              withId:(id)object2;
- (void)insertAndFireEventWithInt:(int)index
                  withEMJsonArray:(id<EMJsonArray>)array
                     withNSString:(NSString *)sessionId
                     withNSString:(NSString *)userId;
- (void)removeAndFireEventWithInt:(int)index
                  withEMJsonArray:(id<EMJsonArray>)array
                     withNSString:(NSString *)sessionId
                     withNSString:(NSString *)userId;
@end

typedef GDRCollaborativeList ComGoodowRealtimeCollaborativeList;

@interface GDRCollaborativeList_$1 : NSObject < ComGoodowRealtimeOperationListAlgorithmListTarget > {
 @public
  GDRCollaborativeList *this$0_;
  int cursor_;
  ComGoodowRealtimeOperationRealtimeOperation *val$operation_;
}

@property (nonatomic, strong) GDRCollaborativeList *this$0;
@property (nonatomic, assign) int cursor;
@property (nonatomic, strong) ComGoodowRealtimeOperationRealtimeOperation *val$operation;

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id<EMJsonArray>)list;
- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)insertWithId:(id<EMJsonArray>)list;
- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length;
- (id)initWithGDRCollaborativeList:(GDRCollaborativeList *)outer$
withComGoodowRealtimeOperationRealtimeOperation:(ComGoodowRealtimeOperationRealtimeOperation *)capture$0;
@end
