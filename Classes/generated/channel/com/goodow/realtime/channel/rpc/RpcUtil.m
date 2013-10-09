//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "com/goodow/realtime/channel/constant/Constants.h"
#include "com/goodow/realtime/channel/rpc/RpcUtil.h"
#include "elemental/json/Json.h"
#include "elemental/json/JsonException.h"
#include "elemental/json/JsonFactory.h"
#include "elemental/json/JsonValue.h"

@implementation ComGoodowRealtimeChannelRpcRpcUtil

+ (id)evalPrefixedWithNSString:(NSString *)data {
  if (![((NSString *) nil_chk(data)) hasPrefix:[ComGoodowRealtimeChannelConstantConstants XSSI_PREFIX]]) {
    @throw [[GDRJsonException alloc] initWithNSString:[NSString stringWithFormat:@"Data did not start with XSSI prefix: %@", data]];
  }
  return [((id<GDRJsonFactory>) nil_chk([GDRJson instance])) parseWithNSString:[data substring:[((NSString *) nil_chk([ComGoodowRealtimeChannelConstantConstants XSSI_PREFIX])) length]]];
}

- (id)init {
  return [super init];
}

@end