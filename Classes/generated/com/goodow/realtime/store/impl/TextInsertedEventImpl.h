//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/TextInsertedEventImpl.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplTextInsertedEventImpl_H_
#define _ComGoodowRealtimeStoreImplTextInsertedEventImpl_H_

@protocol ComGoodowRealtimeJsonJsonObject;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/TextInsertedEvent.h"
#include "com/goodow/realtime/store/impl/BaseModelEventImpl.h"

@interface ComGoodowRealtimeStoreImplTextInsertedEventImpl : ComGoodowRealtimeStoreImplBaseModelEventImpl < ComGoodowRealtimeStoreTextInsertedEvent > {
 @public
  int index__;
  NSString *text__;
}

- (id)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized;

- (int)index;

- (NSString *)text;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplTextInsertedEventImpl *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplTextInsertedEventImpl_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplTextInsertedEventImpl, text__, NSString *)

#endif // _ComGoodowRealtimeStoreImplTextInsertedEventImpl_H_
