//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/ValuesRemovedEventImpl.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/impl/ValuesRemovedEventImpl.h"

@implementation ComGoodowRealtimeStoreImplValuesRemovedEventImpl

- (id)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) setWithNSString:@"type" withId:[((ComGoodowRealtimeStoreEventTypeEnum *) nil_chk(ComGoodowRealtimeStoreEventTypeEnum_get_VALUES_REMOVED())) name]])) setWithNSString:@"bubbles" withBoolean:NO]]) {
    self->index__ = J2ObjCFpToInt([serialized getNumberWithNSString:@"index"]);
    self->values__ = [serialized getArrayWithNSString:@"values"];
  }
  return self;
}

- (int)index {
  return index__;
}

- (id<ComGoodowRealtimeJsonJsonArray>)values {
  return values__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplValuesRemovedEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->index__ = index__;
  other->values__ = values__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeJsonJsonObject:", "ValuesRemovedEventImpl", NULL, 0x1, NULL },
    { "index", NULL, "I", 0x1, NULL },
    { "values", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "index__", "index", 0x11, "I", NULL,  },
    { "values__", "values", 0x11, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplValuesRemovedEventImpl = { "ValuesRemovedEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplValuesRemovedEventImpl;
}

@end
