//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/StringNormalizer.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/operation/list/StringNormalizer.h"
#import "com/goodow/realtime/operation/list/StringOp.h"
#import "java/lang/StringBuilder.h"

@implementation ComGoodowRealtimeOperationListStringNormalizer

- (id)init {
  return [super initWithComGoodowRealtimeOperationListAlgorithmListOp:[[[ComGoodowRealtimeOperationListStringOp alloc] init] autorelease] withComGoodowRealtimeOperationListAlgorithmListNormalizer_Appender:[[[ComGoodowRealtimeOperationListStringNormalizer_StringAppender alloc] init] autorelease]];
}

- (BOOL)isEmptyWithId:(NSString *)str {
  return [NIL_CHK(str) isEmpty];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation ComGoodowRealtimeOperationListStringNormalizer_StringAppender

- (JavaLangStringBuilder *)sb {
  return sb_;
}
- (void)setSb:(JavaLangStringBuilder *)sb {
  JreOperatorRetainedAssign(&sb_, sb);
}
@synthesize sb = sb_;

- (void)appendWithId:(NSString *)str {
  [((JavaLangStringBuilder *) NIL_CHK(sb_)) appendWithNSString:str];
}

- (NSString *)flush {
  @try {
    return [((JavaLangStringBuilder *) NIL_CHK(sb_)) description];
  }
  @finally {
    JreOperatorRetainedAssign(&sb_, [[[JavaLangStringBuilder alloc] init] autorelease]);
  }
}

- (NSString *)description {
  return [((JavaLangStringBuilder *) NIL_CHK(sb_)) description];
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&sb_, [[[JavaLangStringBuilder alloc] init] autorelease]);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&sb_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListStringNormalizer_StringAppender *typedCopy = (ComGoodowRealtimeOperationListStringNormalizer_StringAppender *) copy;
  typedCopy.sb = sb_;
}

@end
