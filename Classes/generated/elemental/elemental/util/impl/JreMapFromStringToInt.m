//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/util/impl/JreMapFromStringToInt.java
//
//  Created by retechretech on 13-5-25.
//

#import "elemental/util/ArrayOf.h"
#import "elemental/util/ArrayOfInt.h"
#import "elemental/util/ArrayOfString.h"
#import "elemental/util/impl/JreArrayOfInt.h"
#import "elemental/util/impl/JreMapFromStringTo.h"
#import "elemental/util/impl/JreMapFromStringToInt.h"
#import "java/lang/Integer.h"

@implementation ElementalUtilImplJreMapFromStringToInt

- (ElementalUtilImplJreMapFromStringTo *)map {
  return map_;
}
- (void)setMap:(ElementalUtilImplJreMapFromStringTo *)map {
  JreOperatorRetainedAssign(&map_, map);
}
@synthesize map = map_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&map_, [[[ElementalUtilImplJreMapFromStringTo alloc] init] autorelease]);
  }
  return self;
}

- (int)getWithNSString:(NSString *)key {
  return [((JavaLangInteger *) [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) getWithNSString:key]) intValue];
}

- (BOOL)hasKeyWithNSString:(NSString *)key {
  return [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) hasKeyWithNSString:key];
}

- (id<ElementalUtilArrayOfString>)keys {
  return [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) keys];
}

- (void)putWithNSString:(NSString *)key
                withInt:(int)value {
  [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) putWithNSString:key withId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)removeWithNSString:(NSString *)key {
  [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) removeWithNSString:key];
}

- (id<ElementalUtilArrayOfInt>)values {
  return [[[ElementalUtilImplJreArrayOfInt alloc] initWithElementalUtilArrayOf:((id<ElementalUtilArrayOf>) [((ElementalUtilImplJreMapFromStringTo *) NIL_CHK(map_)) values])] autorelease];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&map_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ElementalUtilImplJreMapFromStringToInt *typedCopy = (ElementalUtilImplJreMapFromStringToInt *) copy;
  typedCopy.map = map_;
}

@end
