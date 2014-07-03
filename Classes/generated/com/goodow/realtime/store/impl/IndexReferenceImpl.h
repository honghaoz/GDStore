//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/IndexReferenceImpl.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplIndexReferenceImpl_H_
#define _ComGoodowRealtimeStoreImplIndexReferenceImpl_H_

@class ComGoodowRealtimeOperationOperationComponent;
@class ComGoodowRealtimeStoreImplModelImpl;
@class IOSObjectArray;
@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeStoreCollaborativeObject;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/IndexReference.h"
#include "com/goodow/realtime/store/impl/CollaborativeObjectImpl.h"

@interface ComGoodowRealtimeStoreImplIndexReferenceImpl : ComGoodowRealtimeStoreImplCollaborativeObjectImpl < ComGoodowRealtimeStoreIndexReference > {
 @public
  NSString *referencedObjectId_;
  int index__;
  BOOL canBeDeleted__;
}

- (id)initWithComGoodowRealtimeStoreImplModelImpl:(ComGoodowRealtimeStoreImplModelImpl *)model;

- (id<ComGoodowRealtimeCoreRegistration>)onReferenceShiftedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (BOOL)canBeDeleted;

- (int)index;

- (id)referencedObject;

- (void)setIndexWithInt:(int)index;

- (id<ComGoodowRealtimeJsonJsonObject>)toJson;

- (void)consumeWithNSString:(NSString *)userId
               withNSString:(NSString *)sessionId
withComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)component;

- (IOSObjectArray *)toInitialization;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplIndexReferenceImpl *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplIndexReferenceImpl_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplIndexReferenceImpl, referencedObjectId_, NSString *)

#endif // _ComGoodowRealtimeStoreImplIndexReferenceImpl_H_
