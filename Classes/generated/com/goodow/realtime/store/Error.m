//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/Error.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/store/Error.h"
#include "com/goodow/realtime/store/ErrorType.h"
#include "com/google/gwt/core/client/js/JsType.h"

@interface ComGoodowRealtimeStoreError : NSObject
@end

@implementation ComGoodowRealtimeStoreError

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "isFatal", NULL, "Z", 0x401, NULL },
    { "message", NULL, "Ljava.lang.String;", 0x401, NULL },
    { "type", NULL, "Lcom.goodow.realtime.store.ErrorType;", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreError = { "Error", "com.goodow.realtime.store", NULL, 0x201, 3, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreError;
}

@end
