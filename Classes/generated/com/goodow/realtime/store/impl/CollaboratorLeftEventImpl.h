//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/CollaboratorLeftEventImpl.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl_H_
#define _ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl_H_

@class ComGoodowRealtimeStoreEventTypeEnum;
@protocol ComGoodowRealtimeStoreCollaborator;
@protocol ComGoodowRealtimeStoreDocument;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/CollaboratorLeftEvent.h"

@interface ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl : NSObject < ComGoodowRealtimeStoreCollaboratorLeftEvent > {
 @public
  id<ComGoodowRealtimeStoreCollaborator> collaborator__;
}

- (id)initWithComGoodowRealtimeStoreDocument:(id<ComGoodowRealtimeStoreDocument>)document
      withComGoodowRealtimeStoreCollaborator:(id<ComGoodowRealtimeStoreCollaborator>)collaborator;

- (id<ComGoodowRealtimeStoreCollaboratorLeftEvent>)deserializeWithComGoodowRealtimeStoreDocument:(id<ComGoodowRealtimeStoreDocument>)source
                                                                                          withId:(id)serialized;

- (id<ComGoodowRealtimeStoreCollaborator>)collaborator;

- (ComGoodowRealtimeStoreEventTypeEnum *)type;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl, collaborator__, id<ComGoodowRealtimeStoreCollaborator>)

#endif // _ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl_H_
