//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/undo/UndoStack.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/Operation.h"
#include "com/goodow/realtime/operation/Transformer.h"
#include "com/goodow/realtime/operation/undo/UndoStack.h"
#include "com/goodow/realtime/operation/util/Pair.h"

@implementation ComGoodowRealtimeOperationUndoUndoStack

- (id)initWithComGoodowRealtimeOperationTransformer:(id<ComGoodowRealtimeOperationTransformer>)transformer {
  if (self = [super init]) {
    stack_ = [ComGoodowRealtimeJsonJson createArray];
    self->transformer_ = transformer;
  }
  return self;
}

- (void)clear {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(stack_)) clear];
}

- (void)nonUndoableOperationWithId:(id<ComGoodowRealtimeOperationOperation>)op {
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(stack_)) length] > 0) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(((ComGoodowRealtimeOperationUndoUndoStack_StackEntry *) nil_chk([stack_ getWithInt:[stack_ length] - 1]))->nonUndoables_)) pushWithId:op];
  }
}

- (ComGoodowRealtimeOperationUtilPair *)pop {
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(stack_)) length] == 0) {
    return nil;
  }
  ComGoodowRealtimeOperationUndoUndoStack_StackEntry *entry_ = [stack_ removeWithInt:[stack_ length] - 1];
  id<ComGoodowRealtimeOperationOperation> op = (id<ComGoodowRealtimeOperationOperation>) [((id<ComGoodowRealtimeOperationOperation>) nil_chk(((ComGoodowRealtimeOperationUndoUndoStack_StackEntry *) nil_chk(entry_))->op_)) invert];
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(entry_->nonUndoables_)) length] == 0) {
    return [[ComGoodowRealtimeOperationUtilPair alloc] initWithId:op withId:nil];
  }
  ComGoodowRealtimeOperationUtilPair *pair = [transformer_ transformWithId:op withId:[((id<ComGoodowRealtimeOperationTransformer>) nil_chk(transformer_)) composeWithComGoodowRealtimeJsonJsonArray:entry_->nonUndoables_]];
  ComGoodowRealtimeOperationUndoUndoStack_StackEntry *nextEntry = [stack_ length] == 0 ? nil : [stack_ getWithInt:[stack_ length] - 1];
  if (nextEntry != nil) {
    (void) [nextEntry->nonUndoables_ pushWithId:((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->second_];
  }
  return [[ComGoodowRealtimeOperationUtilPair alloc] initWithId:((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->first_ withId:pair->second_];
}

- (void)pushWithId:(id<ComGoodowRealtimeOperationOperation>)op {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(stack_)) pushWithId:[[ComGoodowRealtimeOperationUndoUndoStack_StackEntry alloc] initWithId:op]];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationUndoUndoStack *)other {
  [super copyAllFieldsTo:other];
  other->stack_ = stack_;
  other->transformer_ = transformer_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeOperationTransformer:", "UndoStack", NULL, 0x0, NULL },
    { "clear", NULL, "V", 0x0, NULL },
    { "nonUndoableOperationWithId:", "nonUndoableOperation", "V", 0x0, NULL },
    { "pop", NULL, "Lcom.goodow.realtime.operation.util.Pair;", 0x0, NULL },
    { "pushWithId:", "push", "V", 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "stack_", NULL, 0x10, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "transformer_", NULL, 0x10, "Lcom.goodow.realtime.operation.Transformer;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeOperationUndoUndoStack = { "UndoStack", "com.goodow.realtime.operation.undo", NULL, 0x10, 5, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationUndoUndoStack;
}

@end

@implementation ComGoodowRealtimeOperationUndoUndoStack_StackEntry

- (id)initWithId:(id)op {
  if (self = [super init]) {
    nonUndoables_ = [ComGoodowRealtimeJsonJson createArray];
    self->op_ = op;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationUndoUndoStack_StackEntry *)other {
  [super copyAllFieldsTo:other];
  other->nonUndoables_ = nonUndoables_;
  other->op_ = op_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithId:", "StackEntry", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "op_", NULL, 0x10, "TT;", NULL,  },
    { "nonUndoables_", NULL, 0x0, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeOperationUndoUndoStack_StackEntry = { "StackEntry", "com.goodow.realtime.operation.undo", "UndoStack", 0x1a, 1, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationUndoUndoStack_StackEntry;
}

@end
