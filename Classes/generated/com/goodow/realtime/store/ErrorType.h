//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/ErrorType.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreErrorType_H_
#define _ComGoodowRealtimeStoreErrorType_H_

#import "JreEmulation.h"
#include "java/lang/Enum.h"

typedef enum {
  ComGoodowRealtimeStoreErrorType_CLIENT_ERROR = 0,
  ComGoodowRealtimeStoreErrorType_CONCURRENT_CREATION = 1,
  ComGoodowRealtimeStoreErrorType_FORBIDDEN = 2,
  ComGoodowRealtimeStoreErrorType_INVALID_COMPOUND_OPERATION = 3,
  ComGoodowRealtimeStoreErrorType_NOT_FOUND = 4,
  ComGoodowRealtimeStoreErrorType_SERVER_ERROR = 5,
  ComGoodowRealtimeStoreErrorType_TOKEN_REFRESH_REQUIRED = 6,
} ComGoodowRealtimeStoreErrorType;

@interface ComGoodowRealtimeStoreErrorTypeEnum : JavaLangEnum < NSCopying > {
}
+ (IOSObjectArray *)values;
+ (ComGoodowRealtimeStoreErrorTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal;
@end

FOUNDATION_EXPORT BOOL ComGoodowRealtimeStoreErrorTypeEnum_initialized;
J2OBJC_STATIC_INIT(ComGoodowRealtimeStoreErrorTypeEnum)

FOUNDATION_EXPORT ComGoodowRealtimeStoreErrorTypeEnum *ComGoodowRealtimeStoreErrorTypeEnum_values[];

#define ComGoodowRealtimeStoreErrorTypeEnum_CLIENT_ERROR ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_CLIENT_ERROR]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, CLIENT_ERROR, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_CONCURRENT_CREATION ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_CONCURRENT_CREATION]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, CONCURRENT_CREATION, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_FORBIDDEN ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_FORBIDDEN]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, FORBIDDEN, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_INVALID_COMPOUND_OPERATION ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_INVALID_COMPOUND_OPERATION]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, INVALID_COMPOUND_OPERATION, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_NOT_FOUND ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_NOT_FOUND]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, NOT_FOUND, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_SERVER_ERROR ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_SERVER_ERROR]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, SERVER_ERROR, ComGoodowRealtimeStoreErrorTypeEnum *)

#define ComGoodowRealtimeStoreErrorTypeEnum_TOKEN_REFRESH_REQUIRED ComGoodowRealtimeStoreErrorTypeEnum_values[ComGoodowRealtimeStoreErrorType_TOKEN_REFRESH_REQUIRED]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeStoreErrorTypeEnum, TOKEN_REFRESH_REQUIRED, ComGoodowRealtimeStoreErrorTypeEnum *)

#endif // _ComGoodowRealtimeStoreErrorType_H_
