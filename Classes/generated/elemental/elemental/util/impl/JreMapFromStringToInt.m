//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "elemental/util/ArrayOf.h"
#include "elemental/util/ArrayOfInt.h"
#include "elemental/util/ArrayOfString.h"
#include "elemental/util/impl/JreArrayOfInt.h"
#include "elemental/util/impl/JreMapFromStringTo.h"
#include "elemental/util/impl/JreMapFromStringToInt.h"
#include "java/lang/Integer.h"

@implementation ElementalUtilImplJreMapFromStringToInt

- (id)init {
  if (self = [super init]) {
    map_ = [[ElementalUtilImplJreMapFromStringTo alloc] init];
  }
  return self;
}

- (int)getWithNSString:(NSString *)key {
  return [((JavaLangInteger *) nil_chk([((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) getWithNSString:key])) intValue];
}

- (BOOL)hasKeyWithNSString:(NSString *)key {
  return [((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) hasKeyWithNSString:key];
}

- (id<ElementalUtilArrayOfString>)keys {
  return [((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) keys];
}

- (void)putWithNSString:(NSString *)key
                withInt:(int)value {
  [((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) putWithNSString:key withId:[JavaLangInteger valueOfWithInt:value]];
}

- (void)removeWithNSString:(NSString *)key {
  [((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) removeWithNSString:key];
}

- (id<ElementalUtilArrayOfInt>)values {
  return [[ElementalUtilImplJreArrayOfInt alloc] initWithElementalUtilArrayOf:[((ElementalUtilImplJreMapFromStringTo *) nil_chk(map_)) values]];
}

- (void)copyAllFieldsTo:(ElementalUtilImplJreMapFromStringToInt *)other {
  [super copyAllFieldsTo:other];
  other->map_ = map_;
}

@end