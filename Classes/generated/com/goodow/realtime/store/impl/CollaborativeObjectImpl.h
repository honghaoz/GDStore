//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/CollaborativeObjectImpl.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplCollaborativeObjectImpl_H_
#define _ComGoodowRealtimeStoreImplCollaborativeObjectImpl_H_

@class ComGoodowRealtimeOperationOperationComponent;
@class ComGoodowRealtimeStoreEventTypeEnum;
@class ComGoodowRealtimeStoreImplModelImpl;
@class IOSObjectArray;
@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeStoreBaseModelEvent;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/CollaborativeObject.h"

@interface ComGoodowRealtimeStoreImplCollaborativeObjectImpl : NSObject < ComGoodowRealtimeStoreCollaborativeObject > {
 @public
  NSString *id__;
  ComGoodowRealtimeStoreImplModelImpl *model_;
}

- (id)initWithComGoodowRealtimeStoreImplModelImpl:(ComGoodowRealtimeStoreImplModelImpl *)model;

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

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplCollaborativeObjectImpl *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplCollaborativeObjectImpl_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplCollaborativeObjectImpl, id__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplCollaborativeObjectImpl, model_, ComGoodowRealtimeStoreImplModelImpl *)

#endif // _ComGoodowRealtimeStoreImplCollaborativeObjectImpl_H_