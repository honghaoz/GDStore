//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "com/goodow/realtime/channel/ChannelDemuxer.h"
#include "com/goodow/realtime/channel/constant/Constants.h"
#include "com/goodow/realtime/channel/rpc/DeltaService.h"
#include "com/goodow/realtime/channel/rpc/PollService.h"
#include "com/goodow/realtime/channel/rpc/Rpc.h"
#include "com/goodow/realtime/channel/rpc/RpcUtil.h"
#include "elemental/json/Json.h"
#include "elemental/json/JsonArray.h"
#include "elemental/json/JsonObject.h"
#include "elemental/util/Collections.h"
#include "elemental/util/MapFromStringToString.h"
#include "java/lang/Throwable.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

@implementation ComGoodowRealtimeChannelRpcPollService

static JavaUtilLoggingLogger * ComGoodowRealtimeChannelRpcPollService_log_;
static ComGoodowRealtimeChannelChannelDemuxer * ComGoodowRealtimeChannelRpcPollService_demuxer_;

+ (JavaUtilLoggingLogger *)log {
  return ComGoodowRealtimeChannelRpcPollService_log_;
}

+ (ComGoodowRealtimeChannelChannelDemuxer *)demuxer {
  return ComGoodowRealtimeChannelRpcPollService_demuxer_;
}

- (void)pollWithGDRJsonArray:(id<GDRJsonArray>)ids
                withNSString:(NSString *)sessionId {
  id<ElementalUtilMapFromStringToString> params = [ElementalUtilCollections mapFromStringToString];
  [((id<ElementalUtilMapFromStringToString>) nil_chk(params)) putWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params ACCESS_TOKEN] withNSString:[((ComGoodowRealtimeChannelChannelDemuxer *) nil_chk(ComGoodowRealtimeChannelRpcPollService_demuxer_)) getAccessToken]];
  [params putWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params SESSION_ID] withNSString:sessionId];
  id<GDRJsonObject> obj = [GDRJson createObject];
  [((id<GDRJsonObject>) nil_chk(obj)) putWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params IDS] withGDRJsonValue:ids];
  (void) [((id<ComGoodowRealtimeChannelRpcRpc>) nil_chk([ComGoodowRealtimeChannelRpcPollService_demuxer_ getRpc])) postWithNSString:[ComGoodowRealtimeChannelConstantConstants_Services POLL] withElementalUtilMapFromStringToString:params withNSString:[obj toJson] withComGoodowRealtimeChannelRpcRpc_RpcCallback:[[ComGoodowRealtimeChannelRpcPollService_$1 alloc] init]];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeChannelRpcPollService class]) {
    ComGoodowRealtimeChannelRpcPollService_log_ = [JavaUtilLoggingLogger getLoggerWithNSString:[[IOSClass classWithClass:[ComGoodowRealtimeChannelRpcDeltaService class]] getName]];
    ComGoodowRealtimeChannelRpcPollService_demuxer_ = [ComGoodowRealtimeChannelChannelDemuxer get];
  }
}

@end
@implementation ComGoodowRealtimeChannelRpcPollService_$1

- (void)onConnectionErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((JavaUtilLoggingLogger *) nil_chk([ComGoodowRealtimeChannelRpcPollService log])) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel WARNING] withNSString:@"onConnectionError " withJavaLangThrowable:e];
}

- (void)onFatalErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((JavaUtilLoggingLogger *) nil_chk([ComGoodowRealtimeChannelRpcPollService log])) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel WARNING] withNSString:@"onFatalError " withJavaLangThrowable:e];
}

- (void)onSuccessWithNSString:(NSString *)data {
  id<GDRJsonArray> msgs = [ComGoodowRealtimeChannelRpcRpcUtil evalPrefixedWithNSString:data];
  for (int i = 0, len = [((id<GDRJsonArray>) nil_chk(msgs)) length]; i < len; i++) {
    id<GDRJsonObject> msg = [msgs getObjectWithInt:i];
    if ([((NSString *) nil_chk([ComGoodowRealtimeChannelConstantConstants_Params TOKEN])) isEqual:[((id<GDRJsonObject>) nil_chk(msg)) getStringWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params ID]]]) {
      [((ComGoodowRealtimeChannelChannelDemuxer *) nil_chk([ComGoodowRealtimeChannelRpcPollService demuxer])) connectWithNSString:[msg getStringWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params TOKEN]]];
      continue;
    }
    [((ComGoodowRealtimeChannelChannelDemuxer *) nil_chk([ComGoodowRealtimeChannelRpcPollService demuxer])) publishMessageWithGDRJsonObject:msg];
  }
}

- (id)init {
  return [super init];
}

@end