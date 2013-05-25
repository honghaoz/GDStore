//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/util/impl/JreArrayOfInt.java
//
//  Created by retechretech on 13-5-25.
//

#import "elemental/util/ArrayOf.h"
#import "elemental/util/ArrayOfInt.h"
#import "elemental/util/CanCompareInt.h"
#import "elemental/util/Collections.h"
#import "elemental/util/impl/JreArrayOfInt.h"
#import "java/lang/Integer.h"

@implementation ElementalUtilImplJreArrayOfInt

- (id<ElementalUtilArrayOf>)array {
  return array_;
}
- (void)setArray:(id<ElementalUtilArrayOf>)array {
  JreOperatorRetainedAssign(&array_, array);
}
@synthesize array = array_;

- (id<ElementalUtilArrayOfInt>)concatWithElementalUtilArrayOfInt:(id<ElementalUtilArrayOfInt>)values {
  return [[[ElementalUtilImplJreArrayOfInt alloc] initWithElementalUtilArrayOf:((id<ElementalUtilArrayOf>) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) concatWithElementalUtilArrayOf:((ElementalUtilImplJreArrayOfInt *) values).array])] autorelease];
}

- (BOOL)containsWithInt:(int)value {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) containsWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (int)getWithInt:(int)index {
  return [((JavaLangInteger *) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) getWithInt:index]) intValue];
}

- (int)indexOfWithInt:(int)value {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) indexOfWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)insertWithInt:(int)index
              withInt:(int)value {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) insertWithInt:index withId:[JavaLangInteger valueOfWithInt:value]];
}

- (BOOL)isEmpty {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) isEmpty];
}

- (BOOL)isSetWithInt:(int)index {
  return ((JavaLangInteger *) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) getWithInt:index]) != nil;
}

- (NSString *)join {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) join];
}

- (NSString *)joinWithNSString:(NSString *)separator {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) joinWithNSString:separator];
}

- (int)length {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) length];
}

- (int)peek {
  return [((JavaLangInteger *) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) peek]) intValue];
}

- (int)pop {
  return [((JavaLangInteger *) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) pop]) intValue];
}

- (void)pushWithInt:(int)value {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) pushWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)removeWithInt:(int)value {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) removeWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)removeByIndexWithInt:(int)index {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) removeByIndexWithInt:index];
}

- (void)setWithInt:(int)index
           withInt:(int)value {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) setWithInt:index withId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)setLengthWithInt:(int)length {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) setLengthWithInt:length];
}

- (int)shift {
  return [((JavaLangInteger *) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) shift]) intValue];
}

- (void)sort {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) sortWithElementalUtilCanCompare:[[[ElementalUtilImplJreArrayOfInt_$1 alloc] init] autorelease]];
}

- (void)sortWithElementalUtilCanCompareInt:(id<ElementalUtilCanCompareInt>)comparator {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) sortWithElementalUtilCanCompare:[[[ElementalUtilImplJreArrayOfInt_$2 alloc] initWithElementalUtilCanCompareInt:comparator] autorelease]];
}

- (id<ElementalUtilArrayOfInt>)spliceWithInt:(int)index
                                     withInt:(int)count {
  return [[[ElementalUtilImplJreArrayOfInt alloc] initWithElementalUtilArrayOf:((id<ElementalUtilArrayOf>) [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) spliceWithInt:index withInt:count])] autorelease];
}

- (void)unshiftWithInt:(int)value {
  [((id<ElementalUtilArrayOf>) NIL_CHK(array_)) unshiftWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&array_, ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]));
  }
  return self;
}

- (id)initWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)array {
  if ((self = [super init])) {
    self.array = array;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&array_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ElementalUtilImplJreArrayOfInt *typedCopy = (ElementalUtilImplJreArrayOfInt *) copy;
  typedCopy.array = array_;
}

@end
@implementation ElementalUtilImplJreArrayOfInt_$1

- (int)compareWithId:(JavaLangInteger *)a
              withId:(JavaLangInteger *)b {
  return a == nil ? (a == b ? 0 : -1) : [((JavaLangInteger *) NIL_CHK(a)) compareToWithId:b];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation ElementalUtilImplJreArrayOfInt_$2

- (id<ElementalUtilCanCompareInt>)val$comparator {
  return val$comparator_;
}
- (void)setVal$comparator:(id<ElementalUtilCanCompareInt>)val$comparator {
  JreOperatorRetainedAssign(&val$comparator_, val$comparator);
}
@synthesize val$comparator = val$comparator_;

- (int)compareWithId:(JavaLangInteger *)a
              withId:(JavaLangInteger *)b {
  return [((id<ElementalUtilCanCompareInt>) NIL_CHK(val$comparator_)) compareWithInt:[((JavaLangInteger *) NIL_CHK(a)) intValue] withInt:[((JavaLangInteger *) NIL_CHK(b)) intValue]];
}

- (id)initWithElementalUtilCanCompareInt:(id<ElementalUtilCanCompareInt>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$comparator_, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$comparator_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ElementalUtilImplJreArrayOfInt_$2 *typedCopy = (ElementalUtilImplJreArrayOfInt_$2 *) copy;
  typedCopy.val$comparator = val$comparator_;
}

@end
