//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpTransformer.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/operation/TransformException.h"
#import "com/goodow/realtime/operation/list/algorithm/ListHelper.h"
#import "com/goodow/realtime/operation/list/algorithm/ListNormalizer.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOp.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpComposer.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpTransformer.h"
#import "com/goodow/realtime/operation/list/algorithm/ListTarget.h"
#import "com/goodow/realtime/util/Pair.h"

@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer

- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  return helper_;
}
- (void)setHelper:(id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  JreOperatorRetainedAssign(&helper_, helper);
}
@synthesize helper = helper_;
- (ComGoodowRealtimeOperationListAlgorithmListNormalizer *)serverNormalizer {
  return serverNormalizer_;
}
- (void)setServerNormalizer:(ComGoodowRealtimeOperationListAlgorithmListNormalizer *)serverNormalizer {
  JreOperatorRetainedAssign(&serverNormalizer_, serverNormalizer);
}
@synthesize serverNormalizer = serverNormalizer_;
- (ComGoodowRealtimeOperationListAlgorithmListNormalizer *)clientNormalizer {
  return clientNormalizer_;
}
- (void)setClientNormalizer:(ComGoodowRealtimeOperationListAlgorithmListNormalizer *)clientNormalizer {
  JreOperatorRetainedAssign(&clientNormalizer_, clientNormalizer);
}
@synthesize clientNormalizer = clientNormalizer_;
- (ComGoodowRealtimeOperationListAlgorithmListOpComposer_Target *)defaultTarget {
  return defaultTarget_;
}
- (void)setDefaultTarget:(ComGoodowRealtimeOperationListAlgorithmListOpComposer_Target *)defaultTarget {
  JreOperatorRetainedAssign(&defaultTarget_, defaultTarget);
}
@synthesize defaultTarget = defaultTarget_;
- (ComGoodowRealtimeOperationListAlgorithmListOpComposer_Target *)target {
  return target_;
}
- (void)setTarget:(ComGoodowRealtimeOperationListAlgorithmListOpComposer_Target *)target {
  JreOperatorRetainedAssign(&target_, target);
}
@synthesize target = target_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListHelper:(id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&defaultTarget_, [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DefaultPreTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:self] autorelease]);
    self.helper = helper;
    JreOperatorRetainedAssign(&serverNormalizer_, ((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(helper)) createNormalizer]));
    JreOperatorRetainedAssign(&clientNormalizer_, ((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(helper)) createNormalizer]));
  }
  return self;
}

- (ComGoodowRealtimeUtilPair *)transformWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)serverOp
                                        withComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)clientOp {
  JreOperatorRetainedAssign(&target_, defaultTarget_);
  int serverIndex = 0;
  int clientIndex = 0;
  while (serverIndex < [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(serverOp)) size]) {
    [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(serverOp)) applyComponentWithInt:serverIndex++ withComGoodowRealtimeOperationListAlgorithmListTarget:target_];
    while ([((ComGoodowRealtimeOperationListAlgorithmListOpComposer_Target *) NIL_CHK(target_)) isPostTarget]) {
      if (clientIndex >= [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(clientOp)) size]) {
        @throw [[[ComGoodowRealtimeOperationTransformException alloc] initWithNSString:[NSString stringWithFormat:@"%@%d, clientOp initial length=%d", @"Document size mismatch: serverOp initial length=", [ComGoodowRealtimeOperationListAlgorithmListOpComposer initialDocumentLengthWithComGoodowRealtimeOperationListAlgorithmListOp:serverOp withComGoodowRealtimeOperationListAlgorithmListHelper:helper_], [ComGoodowRealtimeOperationListAlgorithmListOpComposer initialDocumentLengthWithComGoodowRealtimeOperationListAlgorithmListOp:clientOp withComGoodowRealtimeOperationListAlgorithmListHelper:helper_]]] autorelease];
      }
      [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(clientOp)) applyComponentWithInt:clientIndex++ withComGoodowRealtimeOperationListAlgorithmListTarget:target_];
    }
  }
  if (clientIndex < [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(clientOp)) size]) {
    [((ComGoodowRealtimeOperationListAlgorithmListOp *) NIL_CHK(clientOp)) applyComponentWithInt:clientIndex++ withComGoodowRealtimeOperationListAlgorithmListTarget:target_];
  }
  if (target_ != defaultTarget_) {
    @throw [[[ComGoodowRealtimeOperationTransformException alloc] initWithNSString:@"Illegal transformation: Document size mismatch"] autorelease];
  }
  return ((ComGoodowRealtimeUtilPair *) [ComGoodowRealtimeUtilPair ofWithId:((ComGoodowRealtimeOperationListAlgorithmListOp *) [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(serverNormalizer_)) finish]) withId:((ComGoodowRealtimeOperationListAlgorithmListOp *) [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(clientNormalizer_)) finish])]);
}

- (void)dealloc {
  JreOperatorRetainedAssign(&target_, nil);
  JreOperatorRetainedAssign(&defaultTarget_, nil);
  JreOperatorRetainedAssign(&clientNormalizer_, nil);
  JreOperatorRetainedAssign(&serverNormalizer_, nil);
  JreOperatorRetainedAssign(&helper_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *) copy;
  typedCopy.helper = helper_;
  typedCopy.serverNormalizer = serverNormalizer_;
  typedCopy.clientNormalizer = clientNormalizer_;
  typedCopy.defaultTarget = defaultTarget_;
  typedCopy.target = target_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PreTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)insertWithId:(id)list {
  [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$0_.serverNormalizer)) insertWithId:list];
  [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$0_.clientNormalizer)) retain__WithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$0_.helper)) lengthWithId:list]];
  return nil;
}

- (BOOL)isPostTarget {
  return NO;
}

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PreTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PreTarget *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DefaultPreTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  return this$1_;
}
- (void)setThis$1:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id)list {
  this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withId:list] autorelease];
  return nil;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length {
  this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withInt:length] autorelease];
  return nil;
}

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$ {
  if ((self = [super initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:outer$])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DefaultPreTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DefaultPreTarget *) copy;
  typedCopy.this$1 = this$1_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PostTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)insertWithId:(id)list {
  [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$0_.serverNormalizer)) retain__WithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$0_.helper)) lengthWithId:list]];
  [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$0_.clientNormalizer)) insertWithId:list];
  return nil;
}

- (BOOL)isPostTarget {
  return YES;
}

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PostTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_PostTarget *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  return this$1_;
}
- (void)setThis$1:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;
- (id)list {
  return list_;
}
- (void)setList:(id)list {
  JreOperatorRetainedAssign(&list_, list);
}
@synthesize list = list_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$
                                                                withId:(id)list {
  if ((self = [super initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:outer$])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    self.list = list;
  }
  return self;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id)list {
  if ([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list] <= [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:self.list]) {
    NSAssert([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) startsWithWithId:self.list withId:list], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpTransformer.java:47 condition failed: assert helper.startsWith(this.list, list);");
    [self cancelDeleteWithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list]];
  }
  else {
    NSAssert([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) startsWithWithId:list withId:self.list], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpTransformer.java:50 condition failed: assert helper.startsWith(list, this.list);");
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePreTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:self.list]]] autorelease];
  }
  return nil;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length {
  if (length <= [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) delete__WithId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list_ withInt:0 withInt:length]];
    [self cancelDeleteWithInt:length];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) delete__WithId:list_];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPreTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withInt:length - [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]] autorelease];
  }
  return nil;
}

- (void)cancelDeleteWithInt:(int)size {
  if (size < [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]) {
    JreOperatorRetainedAssign(&list_, [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list_ withInt:size]);
  }
  else {
    this$1_.target = this$1_.defaultTarget;
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&list_, nil);
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.list = list_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePreTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  return this$1_;
}
- (void)setThis$1:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;
- (id)list {
  return list_;
}
- (void)setList:(id)list {
  JreOperatorRetainedAssign(&list_, list);
}
@synthesize list = list_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$
                                                                withId:(id)list {
  if ((self = [super initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:outer$])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    self.list = list;
  }
  return self;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id)list {
  if ([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list] <= [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:self.list]) {
    NSAssert([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) startsWithWithId:self.list withId:list], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpTransformer.java:87 condition failed: assert helper.startsWith(this.list, list);");
    [self cancelDeleteWithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list]];
  }
  else {
    NSAssert([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) startsWithWithId:list withId:self.list], @"src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpTransformer.java:90 condition failed: assert helper.startsWith(list, this.list);");
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:self.list]]] autorelease];
  }
  return nil;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length {
  if (length <= [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) delete__WithId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list_ withInt:0 withInt:length]];
    [self cancelDeleteWithInt:length];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) delete__WithId:list_];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withInt:length - [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]] autorelease];
  }
  return nil;
}

- (void)cancelDeleteWithInt:(int)size {
  if (size < [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list_]) {
    JreOperatorRetainedAssign(&list_, [((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list_ withInt:size]);
  }
  else {
    this$1_.target = this$1_.defaultTarget;
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&list_, nil);
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePreTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePreTarget *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.list = list_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  return this$1_;
}
- (void)setThis$1:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;
@synthesize length = length_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$
                                                               withInt:(int)length {
  if ((self = [super initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:outer$])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    self.length = length;
  }
  return self;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id)list {
  if ([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list] <= length_) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) delete__WithId:list];
    [self cancelRetainWithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list]];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) delete__WithId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:0 withInt:length_]];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePreTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:length_]] autorelease];
  }
  return nil;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length {
  if (length <= self.length) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) retain__WithInt:length];
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) retain__WithInt:length];
    [self cancelRetainWithInt:length];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) retain__WithInt:self.length];
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) retain__WithInt:self.length];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPreTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withInt:length - self.length] autorelease];
  }
  return nil;
}

- (void)cancelRetainWithInt:(int)size {
  if (size < length_) {
    length_ -= size;
  }
  else {
    this$1_.target = this$1_.defaultTarget;
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.length = length_;
}

@end
@implementation ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPreTarget

- (ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  return this$1_;
}
- (void)setThis$1:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;
@synthesize length = length_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:(ComGoodowRealtimeOperationListAlgorithmListOpTransformer *)outer$
                                                               withInt:(int)length {
  if ((self = [super initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:outer$])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    self.length = length;
  }
  return self;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)delete__WithId:(id)list {
  if ([((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list] <= length_) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) delete__WithId:list];
    [self cancelRetainWithInt:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) lengthWithId:list]];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) delete__WithId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:0 withInt:length_]];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_DeletePostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withId:[((id<ComGoodowRealtimeOperationListAlgorithmListHelper>) NIL_CHK(this$1_.helper)) subsetWithId:list withInt:length_]] autorelease];
  }
  return nil;
}

- (id<ComGoodowRealtimeOperationListAlgorithmListTarget>)retain__WithInt:(int)length {
  if (length <= self.length) {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) retain__WithInt:length];
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) retain__WithInt:length];
    [self cancelRetainWithInt:length];
  }
  else {
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.serverNormalizer)) retain__WithInt:self.length];
    [((ComGoodowRealtimeOperationListAlgorithmListNormalizer *) NIL_CHK(this$1_.clientNormalizer)) retain__WithInt:self.length];
    this$1_.target = [[[ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPostTarget alloc] initWithComGoodowRealtimeOperationListAlgorithmListOpTransformer:this$1_ withInt:length - self.length] autorelease];
  }
  return nil;
}

- (void)cancelRetainWithInt:(int)size {
  if (size < length_) {
    length_ -= size;
  }
  else {
    this$1_.target = this$1_.defaultTarget;
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPreTarget *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpTransformer_RetainPreTarget *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.length = length_;
}

@end
