//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/DocumentSaveStateChangedEvent.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/store/DocumentSaveStateChangedEvent.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/google/gwt/core/client/js/JsType.h"

@interface ComGoodowRealtimeStoreDocumentSaveStateChangedEvent : NSObject
@end

@implementation ComGoodowRealtimeStoreDocumentSaveStateChangedEvent

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "isPending", NULL, "Z", 0x401, NULL },
    { "isSaving", NULL, "Z", 0x401, NULL },
    { "type", NULL, "Lcom.goodow.realtime.store.EventType;", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreDocumentSaveStateChangedEvent = { "DocumentSaveStateChangedEvent", "com.goodow.realtime.store", NULL, 0x201, 3, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreDocumentSaveStateChangedEvent;
}

@end
