//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "com/goodow/realtime/operation/undo/UndoManagerImpl.h"
#include "com/goodow/realtime/operation/undo/UndoStack.h"
#include "com/goodow/realtime/operation/util/Pair.h"
#include "java/util/ArrayList.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"

@implementation ComGoodowRealtimeOperationUndoUndoStack

static int ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_;

+ (int)MAX_CAPACITY {
  return ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_;
}

+ (int *)MAX_CAPACITYRef {
  return &ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_;
}

- (id)initWithComGoodowRealtimeOperationUndoUndoManagerImpl_Algorithms:(id<ComGoodowRealtimeOperationUndoUndoManagerImpl_Algorithms>)algorithms {
  if (self = [super init]) {
    ops_ = [[JavaUtilLinkedList alloc] init];
    self->algorithms_ = algorithms;
  }
  return self;
}

- (void)checkpoint {
  checkpointer_ = YES;
}

- (void)clear {
  [((id<JavaUtilList>) nil_chk(ops_)) clear];
}

- (BOOL)isEmpty {
  return [((id<JavaUtilList>) nil_chk(ops_)) isEmpty];
}

- (void)nonUndoableOperationWithId:(id)op {
  NSAssert(op != nil, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/undo/UndoStack.java:62 condition failed: assert op != null;");
  if (![((id<JavaUtilList>) nil_chk(ops_)) isEmpty]) {
    [ops_ addWithId:op];
    [self keepCapacityWithJavaUtilList:ops_];
  }
}

- (ComGoodowRealtimeOperationUtilPair *)pop {
  id<JavaUtilList> transformedClientOps = [[JavaUtilArrayList alloc] init];
  int index;
  do {
    index = [self popOneWithJavaUtilList:transformedClientOps];
  }
  while ([((id<JavaUtilList>) nil_chk(ops_)) getWithInt:index - 1] != nil);
  (void) [((id<JavaUtilList>) nil_chk(ops_)) removeWithInt:index - 1];
  return [ComGoodowRealtimeOperationUtilPair ofWithId:transformedClientOps withId:[ops_ subListWithInt:index - 1 withInt:[ops_ size]]];
}

- (void)pushWithId:(id)op {
  NSAssert(op != nil, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/undo/UndoStack.java:91 condition failed: assert op != null;");
  if ([((id<JavaUtilList>) nil_chk(ops_)) isEmpty] && !checkpointer_) {
    return;
  }
  if (checkpointer_) {
    [ops_ addWithId:nil];
    checkpointer_ = NO;
  }
  [ops_ addWithId:nil];
  [ops_ addWithId:op];
  [self keepCapacityWithJavaUtilList:ops_];
}

- (void)keepCapacityWithJavaUtilList:(id<JavaUtilList>)list {
  int size = [((id<JavaUtilList>) nil_chk(list)) size];
  if (size <= ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_) {
    return;
  }
  NSAssert([list getWithInt:0] == nil && [list getWithInt:1] == nil, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/undo/UndoStack.java:109 condition failed: assert list.get(0) == null && list.get(1) == null;");
  (void) [list removeWithInt:1];
  (void) [list removeWithInt:0];
  size -= 2;
  int nextCheckpointer = -1;
  BOOL previousIsNull = NO;
  for (id __strong op in list) {
    if (previousIsNull && op == nil && size - nextCheckpointer <= ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_) {
      break;
    }
    nextCheckpointer++;
    previousIsNull = op == nil;
  }
  for (int i = 0; i < nextCheckpointer; i++) {
    (void) [list removeWithInt:0];
  }
}

- (int)popOneWithJavaUtilList:(id<JavaUtilList>)results {
  int index = [((id<JavaUtilList>) nil_chk(ops_)) lastIndexOfWithId:nil];
  (void) [ops_ removeWithInt:index];
  id op = [((id<ComGoodowRealtimeOperationUndoUndoManagerImpl_Algorithms>) nil_chk(algorithms_)) invertWithId:[ops_ removeWithInt:index]];
  if (op != nil) {
    [algorithms_ transformWithJavaUtilList:results withId:op withJavaUtilList:ops_ withInt:index];
  }
  return index;
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeOperationUndoUndoStack class]) {
    ComGoodowRealtimeOperationUndoUndoStack_MAX_CAPACITY_ = 100;
  }
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationUndoUndoStack *)other {
  [super copyAllFieldsTo:other];
  other->algorithms_ = algorithms_;
  other->checkpointer_ = checkpointer_;
  other->ops_ = ops_;
}

@end