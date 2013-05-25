//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/json/impl/JreJsonBoolean.java
//
//  Created by retechretech on 13-5-25.
//

@class EMJsonTypeEnum;
@class ElementalJsonImplJsonContext;
@class ElementalJsonImplJsonVisitor;
@protocol EMJsonValue;

#import "JreEmulation.h"
#import "elemental/json/JsonBoolean.h"
#import "elemental/json/impl/JreJsonValue.h"

@interface ElementalJsonImplJreJsonBoolean : ElementalJsonImplJreJsonValue < EMJsonBoolean > {
 @public
  BOOL bool__;
}

@property (nonatomic, assign) BOOL bool_;

- (id)initWithBOOL:(BOOL)bool_;
- (BOOL)asBoolean;
- (double)asNumber;
- (NSString *)asString;
- (BOOL)getBoolean;
- (id)getObject;
- (EMJsonTypeEnum *)getType;
- (BOOL)jsEqualsWithEMJsonValue:(id<EMJsonValue>)value;
- (void)traverseWithElementalJsonImplJsonVisitor:(ElementalJsonImplJsonVisitor *)visitor
                withElementalJsonImplJsonContext:(ElementalJsonImplJsonContext *)ctx;
- (NSString *)toJson;
@end
