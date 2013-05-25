//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/json/impl/JreJsonString.java
//
//  Created by retechretech on 13-5-25.
//

@class EMJsonTypeEnum;
@class ElementalJsonImplJsonContext;
@class ElementalJsonImplJsonVisitor;
@protocol EMJsonValue;

#import "JreEmulation.h"
#import "elemental/json/JsonString.h"
#import "elemental/json/impl/JreJsonValue.h"

@interface ElementalJsonImplJreJsonString : ElementalJsonImplJreJsonValue < EMJsonString > {
 @public
  NSString *string_;
}

@property (nonatomic, copy) NSString *string;

- (id)initWithNSString:(NSString *)string;
- (BOOL)asBoolean;
- (double)asNumber;
- (NSString *)asString;
- (id)getObject;
- (NSString *)getString;
- (EMJsonTypeEnum *)getType;
- (BOOL)jsEqualsWithEMJsonValue:(id<EMJsonValue>)value;
- (void)traverseWithElementalJsonImplJsonVisitor:(ElementalJsonImplJsonVisitor *)visitor
                withElementalJsonImplJsonContext:(ElementalJsonImplJsonContext *)ctx;
- (NSString *)toJson;
@end
