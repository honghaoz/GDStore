//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _ElementalUtilImplJreArrayOfBoolean_H_
#define _ElementalUtilImplJreArrayOfBoolean_H_

@protocol ElementalUtilArrayOf;

#import "JreEmulation.h"
#include "elemental/util/ArrayOfBoolean.h"

@interface ElementalUtilImplJreArrayOfBoolean : NSObject < ElementalUtilArrayOfBoolean > {
 @public
  id<ElementalUtilArrayOf> array_;
}

- (id<ElementalUtilArrayOfBoolean>)concatWithElementalUtilArrayOfBoolean:(id<ElementalUtilArrayOfBoolean>)values;
- (BOOL)containsWithBoolean:(BOOL)value;
- (BOOL)getWithInt:(int)index;
- (int)indexOfWithBoolean:(BOOL)value;
- (void)insertWithInt:(int)index
          withBoolean:(BOOL)value;
- (BOOL)isEmpty;
- (BOOL)isSetWithInt:(int)index;
- (NSString *)join;
- (NSString *)joinWithNSString:(NSString *)separator;
- (int)length;
- (BOOL)peek;
- (BOOL)pop;
- (void)pushWithBoolean:(BOOL)value;
- (void)removeWithBoolean:(BOOL)value;
- (void)removeByIndexWithInt:(int)index;
- (void)setWithInt:(int)index
       withBoolean:(BOOL)value;
- (void)setLengthWithInt:(int)length;
- (BOOL)shift;
- (id<ElementalUtilArrayOfBoolean>)spliceWithInt:(int)index
                                         withInt:(int)count;
- (void)unshiftWithBoolean:(BOOL)value;
- (id)init;
- (id)initWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)array;
- (void)copyAllFieldsTo:(ElementalUtilImplJreArrayOfBoolean *)other;
@end

J2OBJC_FIELD_SETTER(ElementalUtilImplJreArrayOfBoolean, array_, id<ElementalUtilArrayOf>)

#endif // _ElementalUtilImplJreArrayOfBoolean_H_