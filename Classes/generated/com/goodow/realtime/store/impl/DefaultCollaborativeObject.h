//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DefaultCollaborativeObject.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplDefaultCollaborativeObject_H_
#define _ComGoodowRealtimeStoreImplDefaultCollaborativeObject_H_

@class ComGoodowRealtimeOperationOperationComponent;
@class ComGoodowRealtimeStoreEventTypeEnum;
@class ComGoodowRealtimeStoreImplDefaultModel;
@class IOSObjectArray;
@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeStoreBaseModelEvent;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/CollaborativeObject.h"

@interface ComGoodowRealtimeStoreImplDefaultCollaborativeObject : NSObject < ComGoodowRealtimeStoreCollaborativeObject > {
 @public
  NSString *id__;
  ComGoodowRealtimeStoreImplDefaultModel *model_;
}

- (id)initWithComGoodowRealtimeStoreImplDefaultModel:(ComGoodowRealtimeStoreImplDefaultModel *)model;

- (id<ComGoodowRealtimeCoreRegistration>)addEventListenerWithComGoodowRealtimeStoreEventTypeEnum:(ComGoodowRealtimeStoreEventTypeEnum *)type
                                                                withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler
                                                                                     withBoolean:(BOOL)opt_capture;

- (id<ComGoodowRealtimeCoreRegistration>)onObjectChangedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (NSString *)id__;

- (NSString *)description;

- (void)consumeWithNSString:(NSString *)userId
               withNSString:(NSString *)sessionId
withComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)component;

- (void)consumeAndSubmitWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)component;

- (id<ComGoodowRealtimeJsonJsonObject>)eventWithNSString:(NSString *)sessionId
                                            withNSString:(NSString *)userId;

- (void)fireEventWithComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)event;

- (IOSObjectArray *)toInitialization;

- (id)toJson;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDefaultCollaborativeObject *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultCollaborativeObject_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborativeObject, id__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborativeObject, model_, ComGoodowRealtimeStoreImplDefaultModel *)

#endif // _ComGoodowRealtimeStoreImplDefaultCollaborativeObject_H_