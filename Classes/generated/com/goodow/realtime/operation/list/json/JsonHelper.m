//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonHelper.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonElement.h"
#include "com/goodow/realtime/operation/list/json/JsonHelper.h"

BOOL ComGoodowRealtimeOperationListJsonJsonHelper_initialized = NO;

@implementation ComGoodowRealtimeOperationListJsonJsonHelper

ComGoodowRealtimeOperationListJsonJsonHelper * ComGoodowRealtimeOperationListJsonJsonHelper_INSTANCE_;

- (int)lengthWithId:(id<ComGoodowRealtimeJsonJsonArray>)values {
  return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) length];
}

- (id<ComGoodowRealtimeJsonJsonArray>)parseValuesWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  NSAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListJsonJsonHelper_TYPE, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonHelper.java:32 condition failed: assert serialized.getNumber(0) == TYPE;");
  int length = [serialized length];
  NSAssert(length >= 2, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonHelper.java:34 condition failed: assert length >= 2;");
  id<ComGoodowRealtimeJsonJsonArray> values = [ComGoodowRealtimeJsonJson createArray];
  for (int i = 1; i < length; i++) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) pushWithId:[serialized getWithInt:i]];
  }
  return values;
}

- (id<ComGoodowRealtimeJsonJsonArray>)replaceWithWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                                withInt:(int)startIndex
                                                withInt:(int)length
                                                 withId:(id<ComGoodowRealtimeJsonJsonArray>)replacement {
  id<ComGoodowRealtimeJsonJsonArray> array = [ComGoodowRealtimeJsonJson createArray];
  for (int i = 0; i < startIndex; i++) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithId:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) getWithInt:i]];
  }
  if (replacement != nil) {
    [replacement forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationListJsonJsonHelper_$1 alloc] initWithComGoodowRealtimeJsonJsonArray:array]];
  }
  for (int i = startIndex + length, len = [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) length]; i < len; i++) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithId:[values getWithInt:i]];
  }
  return array;
}

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                           withInt:(int)startIndex
                                           withInt:(int)length {
  return [self subsetWithId:values withInt:startIndex withInt:length withInt:0 withInt:0];
}

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values
                                           withInt:(int)startIndex0
                                           withInt:(int)length0
                                           withInt:(int)startIndex1
                                           withInt:(int)length1 {
  return [self subsetWithId:values withInt:startIndex0 withInt:length0 withId:values withInt:startIndex1 withInt:length1];
}

- (id<ComGoodowRealtimeJsonJsonArray>)subsetWithId:(id<ComGoodowRealtimeJsonJsonArray>)values0
                                           withInt:(int)startIndex0
                                           withInt:(int)length0
                                            withId:(id<ComGoodowRealtimeJsonJsonArray>)values1
                                           withInt:(int)startIndex1
                                           withInt:(int)length1 {
  id<ComGoodowRealtimeJsonJsonArray> array = [ComGoodowRealtimeJsonJson createArray];
  for (int i = startIndex0; i < startIndex0 + length0; i++) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithId:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values0)) getWithInt:i]];
  }
  for (int i = startIndex1; i < startIndex1 + length1; i++) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithId:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values1)) getWithInt:i]];
  }
  return array;
}

- (id<ComGoodowRealtimeJsonJsonArray>)toJsonWithId:(id<ComGoodowRealtimeJsonJsonArray>)values {
  id<ComGoodowRealtimeJsonJsonArray> json = [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([ComGoodowRealtimeJsonJson createArray])) pushWithDouble:ComGoodowRealtimeOperationListJsonJsonHelper_TYPE];
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationListJsonJsonHelper_$2 alloc] initWithComGoodowRealtimeJsonJsonArray:json]];
  return json;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeOperationListJsonJsonHelper class]) {
    ComGoodowRealtimeOperationListJsonJsonHelper_INSTANCE_ = [[ComGoodowRealtimeOperationListJsonJsonHelper alloc] init];
    ComGoodowRealtimeOperationListJsonJsonHelper_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "lengthWithComGoodowRealtimeJsonJsonArray:", "length", "I", 0x1, NULL },
    { "parseValuesWithComGoodowRealtimeJsonJsonArray:", "parseValues", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "replaceWithWithComGoodowRealtimeJsonJsonArray:withInt:withInt:withComGoodowRealtimeJsonJsonArray:", "replaceWith", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "subsetWithComGoodowRealtimeJsonJsonArray:withInt:withInt:", "subset", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "subsetWithComGoodowRealtimeJsonJsonArray:withInt:withInt:withInt:withInt:", "subset", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "subsetWithComGoodowRealtimeJsonJsonArray:withInt:withInt:withComGoodowRealtimeJsonJsonArray:withInt:withInt:", "subset", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "toJsonWithComGoodowRealtimeJsonJsonArray:", "toJson", "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "TYPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComGoodowRealtimeOperationListJsonJsonHelper_TYPE },
    { "INSTANCE_", NULL, 0x18, "Lcom.goodow.realtime.operation.list.json.JsonHelper;", &ComGoodowRealtimeOperationListJsonJsonHelper_INSTANCE_,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeOperationListJsonJsonHelper = { "JsonHelper", "com.goodow.realtime.operation.list.json", NULL, 0x1, 8, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationListJsonJsonHelper;
}

@end

@implementation ComGoodowRealtimeOperationListJsonJsonHelper_$1

- (void)callWithInt:(int)index
             withId:(id)value {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$array_)) pushWithId:value];
}

- (id)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$array_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withId:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$array_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeOperationListJsonJsonHelper_$1 = { "$1", "com.goodow.realtime.operation.list.json", "JsonHelper", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationListJsonJsonHelper_$1;
}

@end

@implementation ComGoodowRealtimeOperationListJsonJsonHelper_$2

- (void)callWithInt:(int)index
             withId:(id)value {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$json_)) pushWithId:value];
}

- (id)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$json_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withId:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$json_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeOperationListJsonJsonHelper_$2 = { "$2", "com.goodow.realtime.operation.list.json", "JsonHelper", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationListJsonJsonHelper_$2;
}

@end