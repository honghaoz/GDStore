//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/json/impl/JsonObjectContext.java
//
//  Created by retechretech on 13-5-25.
//

#import "elemental/json/JsonObject.h"
#import "elemental/json/JsonValue.h"
#import "elemental/json/impl/JsonContext.h"
#import "elemental/json/impl/JsonObjectContext.h"

@implementation ElementalJsonImplJsonObjectContext

- (NSString *)currentKey {
  return currentKey_;
}
- (void)setCurrentKey:(NSString *)currentKey {
  JreOperatorRetainedAssign(&currentKey_, currentKey);
}
@synthesize currentKey = currentKey_;

- (id)initWithEMJsonObject:(id<EMJsonObject>)value {
  return [super initWithEMJsonValue:value];
}

- (id<EMJsonObject>)object {
  return (id<EMJsonObject>) [self getValue];
}

- (NSString *)getCurrentKey {
  return currentKey_;
}

- (void)removeMe {
  [((id<EMJsonObject>) [self object]) removeWithNSString:[self getCurrentKey]];
}

- (void)replaceMeWithDouble:(double)d {
  [((id<EMJsonObject>) [self object]) putWithNSString:[self getCurrentKey] withDouble:d];
}

- (void)replaceMeWithNSString:(NSString *)d {
  [((id<EMJsonObject>) [self object]) putWithNSString:[self getCurrentKey] withNSString:d];
}

- (void)replaceMeWithBOOL:(BOOL)d {
  [((id<EMJsonObject>) [self object]) putWithNSString:[self getCurrentKey] withBOOL:d];
}

- (void)replaceMeWithEMJsonValue:(id<EMJsonValue>)value {
  [((id<EMJsonObject>) [self object]) putWithNSString:[self getCurrentKey] withEMJsonValue:value];
}

- (void)setCurrentKeyWithNSString:(NSString *)currentKey {
  self.currentKey = currentKey;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&currentKey_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ElementalJsonImplJsonObjectContext *typedCopy = (ElementalJsonImplJsonObjectContext *) copy;
  typedCopy.currentKey = currentKey_;
}

@end
