//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/json/JsonValue.java
//
//  Created by retechretech on 13-5-25.
//

@class EMJsonTypeEnum;

#import "JreEmulation.h"

@protocol EMJsonValue < NSObject >
- (BOOL)asBoolean;
- (double)asNumber;
- (NSString *)asString;
- (EMJsonTypeEnum *)getType;
- (NSString *)toJson;
- (BOOL)jsEqualsWithEMJsonValue:(id<EMJsonValue>)value;
- (id)toNative;
@end

#define ElementalJsonJsonValue EMJsonValue
