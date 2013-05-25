//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java
//
//  Created by retechretech on 13-5-25.
//

#import "IOSObjectArray.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "com/goodow/realtime/operation/list/algorithm/ListHelper.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOp.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpCollector.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpInverter.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpTransformer.h"
#import "com/goodow/realtime/operation/list/algorithm/ListTarget.h"
#import "com/goodow/realtime/util/Pair.h"
#import "elemental/json/JsonArray.h"
#import "elemental/json/JsonObject.h"
#import "elemental/json/JsonType.h"
#import "elemental/json/JsonValue.h"
#import "elemental/util/ArrayOf.h"
#import "elemental/util/Collections.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/UnsupportedOperationException.h"

@implementation ComGoodowRealtimeOperationListAlgorithmListOp

@synthesize frozen = frozen_;
- (id<ElementalUtilArrayOf>)components {
  return components_;
}
- (void)setComponents:(id<ElementalUtilArrayOf>)components {
  JreOperatorRetainedAssign(&components_, components);
}
@synthesize components = components_;
- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  return helper_;
}
- (void)setHelper:(id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  JreOperatorRetainedAssign(&helper_, helper);
}
@synthesize helper = helper_;
- (NSString *)id_ {
  return id__;
}
- (void)setId_:(NSString *)id_ {
  JreOperatorRetainedAssign(&id__, id_);
}
@synthesize id_ = id__;

+ (int)TYPE {
  return ComGoodowRealtimeOperationListAlgorithmListOp_TYPE;
}

- (id)initComGoodowRealtimeOperationListAlgorithmListOp {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&components_, ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]));
  }
  return self;
}

- (id)init {
  return [self initComGoodowRealtimeOperationListAlgorithmListOp];
}

- (id)initWithBOOL:(BOOL)isInsert
           withInt:(int)idx
            withId:(id)list
           withInt:(int)initLength {
  if ((self = [self initComGoodowRealtimeOperationListAlgorithmListOp])) {
    if (list == nil || [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) [self getListHelper]) lengthWithId:list] <= 0) {
      if (initLength > 0) {
        [self retain__WithInt:initLength];
      }
      return self;
    }
    if (idx > 0) {
      [self retain__WithInt:idx];
    }
    if (isInsert) {
      [self insertWithId:list];
    }
    else {
      [self delete__WithId:list];
      idx += [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) [self getListHelper]) lengthWithId:list];
    }
    NSAssert(idx <= initLength, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:131 condition failed: assert idx <= initLength;");
    if (initLength > idx) {
      [self retain__WithInt:initLength - idx];
    }
    frozen_ = YES;
  }
  return self;
}

- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized {
  if ((self = [self initComGoodowRealtimeOperationListAlgorithmListOp])) {
    for (int i = 0, len = [((id<EMJsonArray>) NIL_CHK(serialized)) length]; i < len; i++) {
      id<EMJsonValue> component = [((id<EMJsonArray>) NIL_CHK(serialized)) getWithInt:i];
      if ([EMJsonTypeEnum NUMBER] == [((id<EMJsonValue>) NIL_CHK(component)) getType]) {
        [((id<ElementalUtilArrayOf>) NIL_CHK(self.components)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Retain alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withInt:(int) [((id<EMJsonValue>) NIL_CHK(component)) asNumber]] autorelease]];
      }
      else {
        NSAssert([EMJsonTypeEnum OBJECT] == [((id<EMJsonValue>) NIL_CHK(component)) getType], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:145 condition failed: assert JsonType.OBJECT == component.getType();");
        id<EMJsonObject> c = (id<EMJsonObject>) component;
        NSAssert((int) [[((id<EMJsonObject>) NIL_CHK(c)) keys] count] == 1, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:147 condition failed: assert c.keys().length == 1;");
        NSString *key = ((NSString *) [[((id<EMJsonObject>) NIL_CHK(c)) keys] objectAtIndex:0]);
        if ([NIL_CHK([ComGoodowRealtimeOperationListAlgorithmListOp_Insert KEY]) isEqual:key]) {
          [((id<ElementalUtilArrayOf>) NIL_CHK(self.components)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Insert alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withId:[self fromJsonWithEMJsonValue:[((id<EMJsonObject>) NIL_CHK(c)) getWithNSString:key]]] autorelease]];
        }
        else if ([NIL_CHK([ComGoodowRealtimeOperationListAlgorithmListOp_Delete KEY]) isEqual:key]) {
          [((id<ElementalUtilArrayOf>) NIL_CHK(self.components)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Delete alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withId:[self fromJsonWithEMJsonValue:[((id<EMJsonObject>) NIL_CHK(c)) getWithNSString:key]]] autorelease]];
        }
        else {
          @throw [[[JavaLangIllegalStateException alloc] initWithNSString:[NSString stringWithFormat:@"Cannot parse ListOp component from json: %@", [((id<EMJsonObject>) NIL_CHK(c)) toJson]]] autorelease];
        }
      }
    }
    frozen_ = YES;
  }
  return self;
}

- (void)applyWithId:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target {
  for (int i = 0, len = [self size]; i < len; i++) {
    [self applyComponentWithInt:i withComGoodowRealtimeOperationListAlgorithmListTarget:target];
  }
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)composeWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (ComGoodowRealtimeOperationListAlgorithmListOpCollector *)createOpCollector {
  return [[[ComGoodowRealtimeOperationListAlgorithmListOpCollector alloc] initWithComGoodowRealtimeOperationListAlgorithmListHelper:[self getListHelper]] autorelease];
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)delete__WithId:(id)list {
  NSAssert(!frozen_, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:180 condition failed: assert !frozen;");
  NSAssert(list != nil && [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) [self getListHelper]) lengthWithId:list] > 0, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:181 condition failed: assert list != null && getListHelper().length(list) > 0;");
  [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Delete alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withId:list] autorelease]];
  return self;
}

- (BOOL)isEqual:(id)obj {
  if (!([obj isKindOfClass:[ComGoodowRealtimeOperationListAlgorithmListOp class]])) {
    return NO;
  }
  return [[self description] isEqual:[NIL_CHK(obj) description]];
}

- (NSString *)getId {
  return id__;
}

- (int)getType {
  return ComGoodowRealtimeOperationListAlgorithmListOp_TYPE;
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)insertWithId:(id)list {
  NSAssert(!frozen_, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:206 condition failed: assert !frozen;");
  NSAssert(list != nil && [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) [self getListHelper]) lengthWithId:list] > 0, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:207 condition failed: assert list != null && getListHelper().length(list) > 0;");
  [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Insert alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withId:list] autorelease]];
  return self;
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)invert {
  return ((ComGoodowRealtimeOperationListAlgorithmListOp *) [[[[ComGoodowRealtimeOperationListAlgorithmListOpInverter alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withComGoodowRealtimeOperationListAlgorithmListOp:((ComGoodowRealtimeOperationListAlgorithmListOp *) [[self getListHelper] newOp])] autorelease] finish]);
}

- (BOOL)isNoOp {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) isEmpty];
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)retain__WithInt:(int)length {
  NSAssert(!frozen_, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:224 condition failed: assert !frozen;");
  NSAssert(length > 0, @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:225 condition failed: assert length > 0;");
  [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) pushWithId:[[[ComGoodowRealtimeOperationListAlgorithmListOp_Retain alloc] initWithComGoodowRealtimeOperationListAlgorithmListOp:self withInt:length] autorelease]];
  return self;
}

- (void)setIdWithNSString:(NSString *)id_ {
  self.id_ = id_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[%@]", [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) join]];
}

- (ComGoodowRealtimeUtilPair *)transformWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)clientOp {
  NSAssert([(id) clientOp isKindOfClass:[ComGoodowRealtimeOperationListAlgorithmListOp class]], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:243 condition failed: assert clientOp instanceof ListOp;");
  return ((ComGoodowRealtimeUtilPair *) [[[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer alloc] initWithComGoodowRealtimeOperationListAlgorithmListHelper:[self getListHelper]] autorelease] transformWithComGoodowRealtimeOperationListAlgorithmListOp:self withComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *) clientOp]);
}

- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)createListHelper {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)fromJsonWithEMJsonValue:(id<EMJsonValue>)json {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)toJsonWithId:(id)list {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)applyComponentWithInt:(int)i
withComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target {
  NSAssert(i < [self size], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java:254 condition failed: assert i < size();");
  [((id<ComGoodowRealtimeOperationListAlgorithmListOp_Component>) ((id<ComGoodowRealtimeOperationListAlgorithmListOp_Component>) [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) getWithInt:i])) applyWithComGoodowRealtimeOperationListAlgorithmListTarget:target];
}

- (int)size {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(components_)) length];
}

- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)getListHelper {
  if (helper_ == nil) {
    JreOperatorRetainedAssign(&helper_, [self createListHelper]);
  }
  return helper_;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&id__, nil);
  JreOperatorRetainedAssign(&helper_, nil);
  JreOperatorRetainedAssign(&components_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOp *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOp *) copy;
  typedCopy.frozen = frozen_;
  typedCopy.components = components_;
  typedCopy.helper = helper_;
  typedCopy.id_ = id__;
}

@end

static ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_INSERT;
static ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_DELETE;
static ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_RETAIN;
IOSObjectArray *ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_values;

@implementation ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum

+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)INSERT {
  return ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_INSERT;
}
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)DELETE {
  return ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_DELETE;
}
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)RETAIN {
  return ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_RETAIN;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum class]) {
    ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_INSERT = [[ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum alloc] initWithNSString:@"INSERT" withInt:0];
    ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_DELETE = [[ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum alloc] initWithNSString:@"DELETE" withInt:1];
    ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_RETAIN = [[ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum alloc] initWithNSString:@"RETAIN" withInt:2];
    ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_INSERT, ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_DELETE, ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_RETAIN, nil } count:3 type:[IOSClass classWithClass:[ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_values];
}

+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_values count]; i++) {
    ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *e = [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOp_Delete

static NSString * ComGoodowRealtimeOperationListAlgorithmListOp_Delete_KEY_ = @"d";

- (ComGoodowRealtimeOperationListAlgorithmListOp *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComGoodowRealtimeOperationListAlgorithmListOp *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (id)list {
  return list_;
}
- (void)setList:(id)list {
  JreOperatorRetainedAssign(&list_, list);
}
@synthesize list = list_;

+ (NSString *)KEY {
  return ComGoodowRealtimeOperationListAlgorithmListOp_Delete_KEY_;
}

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                     withId:(id)list {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    self.list = list;
  }
  return self;
}

- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target {
  [((id<ComGoodowRealtimeOperationListAlgorithmListTarget>) NIL_CHK(target)) delete__WithId:list_];
}

- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType {
  return [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum DELETE];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"{\"d\":%@}", [this$0_ toJsonWithId:list_]];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&list_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOp_Delete *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOp_Delete *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.list = list_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOp_Insert

static NSString * ComGoodowRealtimeOperationListAlgorithmListOp_Insert_KEY_ = @"i";

- (ComGoodowRealtimeOperationListAlgorithmListOp *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComGoodowRealtimeOperationListAlgorithmListOp *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (id)list {
  return list_;
}
- (void)setList:(id)list {
  JreOperatorRetainedAssign(&list_, list);
}
@synthesize list = list_;

+ (NSString *)KEY {
  return ComGoodowRealtimeOperationListAlgorithmListOp_Insert_KEY_;
}

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                     withId:(id)list {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    self.list = list;
  }
  return self;
}

- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target {
  [((id<ComGoodowRealtimeOperationListAlgorithmListTarget>) NIL_CHK(target)) insertWithId:list_];
}

- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType {
  return [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum INSERT];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"{\"i\":%@}", [this$0_ toJsonWithId:list_]];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&list_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOp_Insert *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOp_Insert *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.list = list_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOp_Retain

@synthesize length = length_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                    withInt:(int)length {
  if ((self = [super init])) {
    self.length = length;
  }
  return self;
}

- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target {
  [((id<ComGoodowRealtimeOperationListAlgorithmListTarget>) NIL_CHK(target)) retain__WithInt:length_];
}

- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType {
  return [ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum RETAIN];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%d", length_];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOp_Retain *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOp_Retain *) copy;
  typedCopy.length = length_;
}

@end
