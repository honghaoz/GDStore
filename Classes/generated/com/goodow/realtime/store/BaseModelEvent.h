//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/BaseModelEvent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreBaseModelEvent_H_
#define _ComGoodowRealtimeStoreBaseModelEvent_H_

@class ComGoodowRealtimeStoreEventTypeEnum;

#import "JreEmulation.h"

@protocol ComGoodowRealtimeStoreBaseModelEvent < NSObject, JavaObject >

- (BOOL)bubbles;

- (BOOL)isLocal;

- (NSString *)sessionId;

- (NSString *)userId;

- (ComGoodowRealtimeStoreEventTypeEnum *)type;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreBaseModelEvent_init() {}

#endif // _ComGoodowRealtimeStoreBaseModelEvent_H_
