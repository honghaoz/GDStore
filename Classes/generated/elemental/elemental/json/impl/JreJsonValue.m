//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/json/impl/JreJsonValue.java
//
//  Created by retechretech on 13-5-25.
//

#import "elemental/json/JsonType.h"
#import "elemental/json/JsonValue.h"
#import "elemental/json/impl/JreJsonValue.h"
#import "elemental/json/impl/JsonContext.h"
#import "elemental/json/impl/JsonVisitor.h"

@implementation ElementalJsonImplJreJsonValue

- (id)getObject {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)traverseWithElementalJsonImplJsonVisitor:(ElementalJsonImplJsonVisitor *)visitor
                withElementalJsonImplJsonContext:(ElementalJsonImplJsonContext *)ctx {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)toNative {
  return self;
}

- (NSString *)description {
  return [self toJson];
}

- (BOOL)asBoolean {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)asNumber {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)asString {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (EMJsonTypeEnum *)getType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)jsEqualsWithEMJsonValue:(id<EMJsonValue>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)toJson {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
