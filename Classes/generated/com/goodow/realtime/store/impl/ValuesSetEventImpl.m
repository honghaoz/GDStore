//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/ValuesSetEventImpl.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/impl/ValuesSetEventImpl.h"

@implementation ComGoodowRealtimeStoreImplValuesSetEventImpl

- (id)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) setWithNSString:@"type" withId:[((ComGoodowRealtimeStoreEventTypeEnum *) nil_chk(ComGoodowRealtimeStoreEventTypeEnum_get_VALUES_SET())) name]])) setWithNSString:@"bubbles" withBoolean:NO]]) {
    self->index__ = J2ObjCFpToInt([serialized getNumberWithNSString:@"index"]);
    self->oldValues__ = [serialized getArrayWithNSString:@"oldValues"];
    self->newValues__ = [serialized getArrayWithNSString:@"newValues"];
  }
  return self;
}

- (int)index {
  return index__;
}

- (id<ComGoodowRealtimeJsonJsonArray>)newValues {
  return newValues__;
}

- (id<ComGoodowRealtimeJsonJsonArray>)oldValues {
  return oldValues__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplValuesSetEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->index__ = index__;
  other->newValues__ = newValues__;
  other->oldValues__ = oldValues__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeJsonJsonObject:", "ValuesSetEventImpl", NULL, 0x1, NULL },
    { "index", NULL, "I", 0x1, NULL },
    { "newValues", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "oldValues", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "index__", "index", 0x11, "I", NULL,  },
    { "oldValues__", "oldValues", 0x11, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "newValues__", "newValues", 0x11, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplValuesSetEventImpl = { "ValuesSetEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 4, methods, 3, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplValuesSetEventImpl;
}

@end
