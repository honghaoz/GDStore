//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/CollaborativeStringImpl.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/goodow/realtime/core/Diff.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/core/Platform.h"
#include "com/goodow/realtime/core/Registration.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/operation/OperationComponent.h"
#include "com/goodow/realtime/operation/create/CreateComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/string/StringDeleteComponent.h"
#include "com/goodow/realtime/operation/list/string/StringInsertComponent.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/IndexReference.h"
#include "com/goodow/realtime/store/TextDeletedEvent.h"
#include "com/goodow/realtime/store/TextInsertedEvent.h"
#include "com/goodow/realtime/store/impl/CollaborativeObjectImpl.h"
#include "com/goodow/realtime/store/impl/CollaborativeStringImpl.h"
#include "com/goodow/realtime/store/impl/ModelImpl.h"
#include "com/goodow/realtime/store/impl/TextDeletedEventImpl.h"
#include "com/goodow/realtime/store/impl/TextInsertedEventImpl.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/StringIndexOutOfBoundsException.h"
#include "java/lang/UnsupportedOperationException.h"

@implementation ComGoodowRealtimeStoreImplCollaborativeStringImpl

- (id)initWithComGoodowRealtimeStoreImplModelImpl:(ComGoodowRealtimeStoreImplModelImpl *)model {
  if (self = [super initWithComGoodowRealtimeStoreImplModelImpl:model]) {
    snapshot_ = [[JavaLangStringBuilder alloc] init];
  }
  return self;
}

- (id<ComGoodowRealtimeCoreRegistration>)onTextDeletedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler {
  return [self addEventListenerWithComGoodowRealtimeStoreEventTypeEnum:ComGoodowRealtimeStoreEventTypeEnum_get_TEXT_DELETED() withComGoodowRealtimeCoreHandler:handler withBoolean:NO];
}

- (id<ComGoodowRealtimeCoreRegistration>)onTextInsertedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler {
  return [self addEventListenerWithComGoodowRealtimeStoreEventTypeEnum:ComGoodowRealtimeStoreEventTypeEnum_get_TEXT_INSERTED() withComGoodowRealtimeCoreHandler:handler withBoolean:NO];
}

- (void)appendWithNSString:(NSString *)text {
  [self insertStringWithInt:[self length] withNSString:text];
}

- (NSString *)getText {
  return [((JavaLangStringBuilder *) nil_chk(snapshot_)) description];
}

- (void)insertStringWithInt:(int)index
               withNSString:(NSString *)text {
  if (text == nil || [text isEmpty]) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"At least one value must be specified for an insert mutation. text: %@", text]];
  }
  [self checkIndexWithInt:index];
  ComGoodowRealtimeOperationListStringStringInsertComponent *op = [[ComGoodowRealtimeOperationListStringStringInsertComponent alloc] initWithNSString:id__ withInt:index withNSString:text];
  [self consumeAndSubmitWithComGoodowRealtimeOperationOperationComponent:op];
}

- (int)length {
  return [((JavaLangStringBuilder *) nil_chk(snapshot_)) sequenceLength];
}

- (id<ComGoodowRealtimeStoreIndexReference>)registerReferenceWithInt:(int)index
                                                         withBoolean:(BOOL)canBeDeleted {
  [self checkIndexWithInt:index];
  return [((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_)) createIndexReferenceWithNSString:id__ withInt:index withBoolean:canBeDeleted];
}

- (void)removeRangeWithInt:(int)startIndex
                   withInt:(int)endIndex {
  int length = [self length];
  if (startIndex < 0 || startIndex >= length || endIndex <= startIndex || endIndex > length) {
    @throw [[JavaLangStringIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"StartIndex: %d, EndIndex: %d, Size: %d", startIndex, endIndex, length]];
  }
  ComGoodowRealtimeOperationListStringStringDeleteComponent *op = [[ComGoodowRealtimeOperationListStringStringDeleteComponent alloc] initWithNSString:id__ withInt:startIndex withNSString:[((JavaLangStringBuilder *) nil_chk(snapshot_)) substringWithInt:startIndex withInt:endIndex]];
  [self consumeAndSubmitWithComGoodowRealtimeOperationOperationComponent:op];
}

- (void)setTextWithNSString:(NSString *)text {
  if (text == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Expected string for text, but was: null"];
  }
  [((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_)) beginCompoundOperationWithNSString:@"replaceText"];
  [((id<ComGoodowRealtimeCoreDiff>) nil_chk([ComGoodowRealtimeCorePlatform diff])) diffWithNSString:[self getText] withNSString:text withComGoodowRealtimeCoreDiff_ListTarget:[[ComGoodowRealtimeStoreImplCollaborativeStringImpl_$1 alloc] initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:self]];
  [model_ endCompoundOperation];
}

- (NSString *)toJson {
  return [self getText];
}

- (void)consumeWithNSString:(NSString *)userId
               withNSString:(NSString *)sessionId
withComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)component {
  ComGoodowRealtimeOperationListAbstractListComponent *op = (ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(component, [ComGoodowRealtimeOperationListAbstractListComponent class]);
  [((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(op)) applyWithId:[[ComGoodowRealtimeStoreImplCollaborativeStringImpl_$2 alloc] initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:self withNSString:sessionId withNSString:userId withComGoodowRealtimeOperationListAbstractListComponent:op]];
}

- (IOSObjectArray *)toInitialization {
  IOSObjectArray *toRtn = [IOSObjectArray arrayWithLength:1 + ([self length] == 0 ? 0 : 1) type:[IOSClass classWithClass:[ComGoodowRealtimeOperationOperationComponent class]]];
  (void) IOSObjectArray_Set(toRtn, 0, [[ComGoodowRealtimeOperationCreateCreateComponent alloc] initWithNSString:id__ withInt:ComGoodowRealtimeOperationCreateCreateComponent_STRING]);
  if ([self length] != 0) {
    (void) IOSObjectArray_Set(toRtn, 1, [[ComGoodowRealtimeOperationListStringStringInsertComponent alloc] initWithNSString:id__ withInt:0 withNSString:[self getText]]);
  }
  return toRtn;
}

- (void)checkIndexWithInt:(int)index {
  int length = [self length];
  if (index < 0 || index > length) {
    @throw [[JavaLangStringIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", index, length]];
  }
}

- (void)deleteAndFireEventWithInt:(int)startIndex
                          withInt:(int)length
                     withNSString:(NSString *)sessionId
                     withNSString:(NSString *)userId {
  int endIndex = startIndex + length;
  NSAssert(length > 0 && endIndex <= [self length], @"/Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/CollaborativeStringImpl.java:164 condition failed: assert length > 0 && endIndex <= length();");
  NSString *toDelete = [((JavaLangStringBuilder *) nil_chk(snapshot_)) substringWithInt:startIndex withInt:endIndex];
  id<ComGoodowRealtimeStoreTextDeletedEvent> event = [[ComGoodowRealtimeStoreImplTextDeletedEventImpl alloc] initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([self eventWithNSString:sessionId withNSString:userId])) setWithNSString:@"index" withDouble:startIndex])) setWithNSString:@"text" withId:toDelete]];
  (void) [snapshot_ delete__WithInt:startIndex withInt:endIndex];
  [self fireEventWithComGoodowRealtimeStoreBaseModelEvent:event];
  ((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->bytesUsed_ -= length;
}

- (void)insertAndFireEventWithInt:(int)index
                     withNSString:(NSString *)text
                     withNSString:(NSString *)sessionId
                     withNSString:(NSString *)userId {
  NSAssert(index <= [self length], @"/Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/CollaborativeStringImpl.java:175 condition failed: assert index <= length();");
  id<ComGoodowRealtimeStoreTextInsertedEvent> event = [[ComGoodowRealtimeStoreImplTextInsertedEventImpl alloc] initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([self eventWithNSString:sessionId withNSString:userId])) setWithNSString:@"index" withDouble:index])) setWithNSString:@"text" withId:text]];
  (void) [((JavaLangStringBuilder *) nil_chk(snapshot_)) insertWithInt:index withNSString:text];
  [self fireEventWithComGoodowRealtimeStoreBaseModelEvent:event];
  ((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->bytesUsed_ += ((int) [((NSString *) nil_chk(text)) length]);
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplCollaborativeStringImpl *)other {
  [super copyAllFieldsTo:other];
  other->snapshot_ = snapshot_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeStoreImplModelImpl:", "CollaborativeStringImpl", NULL, 0x0, NULL },
    { "onTextDeletedWithComGoodowRealtimeCoreHandler:", "onTextDeleted", "Lcom.goodow.realtime.core.Registration;", 0x1, NULL },
    { "onTextInsertedWithComGoodowRealtimeCoreHandler:", "onTextInserted", "Lcom.goodow.realtime.core.Registration;", 0x1, NULL },
    { "appendWithNSString:", "append", "V", 0x1, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "insertStringWithInt:withNSString:", "insertString", "V", 0x1, NULL },
    { "length", NULL, "I", 0x1, NULL },
    { "registerReferenceWithInt:withBoolean:", "registerReference", "Lcom.goodow.realtime.store.IndexReference;", 0x1, NULL },
    { "removeRangeWithInt:withInt:", "removeRange", "V", 0x1, NULL },
    { "setTextWithNSString:", "setText", "V", 0x1, NULL },
    { "toJson", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "consumeWithNSString:withNSString:withComGoodowRealtimeOperationOperationComponent:", "consume", "V", 0x4, NULL },
    { "toInitialization", NULL, "[Lcom.goodow.realtime.operation.OperationComponent;", 0x0, NULL },
    { "checkIndexWithInt:", "checkIndex", "V", 0x2, NULL },
    { "deleteAndFireEventWithInt:withInt:withNSString:withNSString:", "deleteAndFireEvent", "V", 0x2, NULL },
    { "insertAndFireEventWithInt:withNSString:withNSString:withNSString:", "insertAndFireEvent", "V", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "snapshot_", NULL, 0x12, "Ljava.lang.StringBuilder;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplCollaborativeStringImpl = { "CollaborativeStringImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 16, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplCollaborativeStringImpl;
}

@end

@implementation ComGoodowRealtimeStoreImplCollaborativeStringImpl_$1

- (void)insertWithInt:(int)startIndex
               withId:(NSString *)values {
  [this$0_ insertStringWithInt:startIndex withNSString:values];
}

- (void)removeWithInt:(int)startIndex
              withInt:(int)length {
  [this$0_ removeRangeWithInt:startIndex withInt:startIndex + length];
}

- (void)replaceWithInt:(int)startIndex
                withId:(NSString *)values {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (void)moveWithInt:(int)fromIndex
            withInt:(int)toIndex
            withInt:(int)length {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id)initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:(ComGoodowRealtimeStoreImplCollaborativeStringImpl *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "insertWithInt:withNSString:", "insert", "V", 0x1, NULL },
    { "removeWithInt:withInt:", "remove", "V", 0x1, NULL },
    { "replaceWithInt:withNSString:", "replace", "V", 0x1, NULL },
    { "moveWithInt:withInt:withInt:", "move", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.CollaborativeStringImpl;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplCollaborativeStringImpl_$1 = { "$1", "com.goodow.realtime.store.impl", "CollaborativeStringImpl", 0x8000, 5, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplCollaborativeStringImpl_$1;
}

@end

@implementation ComGoodowRealtimeStoreImplCollaborativeStringImpl_$2

- (void)delete__WithInt:(int)startIndex
                withInt:(int)length {
  [this$0_ deleteAndFireEventWithInt:startIndex withInt:length withNSString:val$sessionId_ withNSString:val$userId_];
  [((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_)) transformCursorWithComGoodowRealtimeOperationListAbstractListComponent:val$op_ withNSString:val$userId_ withNSString:val$sessionId_];
}

- (void)insertWithInt:(int)startIndex
               withId:(NSString *)values {
  [this$0_ insertAndFireEventWithInt:startIndex withNSString:values withNSString:val$sessionId_ withNSString:val$userId_];
  [((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_)) transformCursorWithComGoodowRealtimeOperationListAbstractListComponent:val$op_ withNSString:val$userId_ withNSString:val$sessionId_];
}

- (void)replaceWithInt:(int)startIndex
                withId:(NSString *)values {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id)initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:(ComGoodowRealtimeStoreImplCollaborativeStringImpl *)outer$
                                                   withNSString:(NSString *)capture$0
                                                   withNSString:(NSString *)capture$1
        withComGoodowRealtimeOperationListAbstractListComponent:(ComGoodowRealtimeOperationListAbstractListComponent *)capture$2 {
  this$0_ = outer$;
  val$sessionId_ = capture$0;
  val$userId_ = capture$1;
  val$op_ = capture$2;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "delete__WithInt:withInt:", "delete", "V", 0x1, NULL },
    { "insertWithInt:withNSString:", "insert", "V", 0x1, NULL },
    { "replaceWithInt:withNSString:", "replace", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplCollaborativeStringImpl:withNSString:withNSString:withComGoodowRealtimeOperationListAbstractListComponent:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.CollaborativeStringImpl;", NULL,  },
    { "val$sessionId_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$userId_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$op_", NULL, 0x1012, "Lcom.goodow.realtime.operation.list.AbstractListComponent;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplCollaborativeStringImpl_$2 = { "$2", "com.goodow.realtime.store.impl", "CollaborativeStringImpl", 0x8000, 4, methods, 4, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplCollaborativeStringImpl_$2;
}

@end