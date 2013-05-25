//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/channel/rpc/SaveService.java
//
//  Created by retechretech on 13-5-25.
//

#import "IOSClass.h"
#import "com/goodow/realtime/channel/operation/GenericOperationChannel.h"
#import "com/goodow/realtime/channel/rpc/Constants.h"
#import "com/goodow/realtime/channel/rpc/Rpc.h"
#import "com/goodow/realtime/channel/rpc/RpcUtil.h"
#import "com/goodow/realtime/channel/rpc/SaveService.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "elemental/json/Json.h"
#import "elemental/json/JsonFactory.h"
#import "elemental/json/JsonObject.h"
#import "elemental/json/JsonValue.h"
#import "elemental/util/ArrayOf.h"
#import "elemental/util/Collections.h"
#import "elemental/util/MapFromStringToString.h"
#import "java/lang/Throwable.h"
#import "java/util/logging/Level.h"
#import "java/util/logging/Logger.h"

@implementation ComGoodowRealtimeChannelRpcSaveService

static JavaUtilLoggingLogger * ComGoodowRealtimeChannelRpcSaveService_log_;

@synthesize rpc = rpc_;
@synthesize id_ = id__;
@synthesize token = token_;

+ (JavaUtilLoggingLogger *)log {
  return ComGoodowRealtimeChannelRpcSaveService_log_;
}

- (id)initWithComGoodowRealtimeChannelRpcRpc:(id<ComGoodowRealtimeChannelRpcRpc>)rpc
                                withNSString:(NSString *)id_
                                withNSString:(NSString *)token {
  if ((self = [super init])) {
    self.rpc = rpc;
    self.id_ = id_;
    self.token = token;
  }
  return self;
}

- (void)callbackNotNeededWithComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:(id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>)callback {
}

- (void)requestRevisionWithNSString:(NSString *)sessionId
withComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:(id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>)callback {
  id<ElementalUtilMapFromStringToString> params = [ElementalUtilCollections mapFromStringToString];
  [((id<ElementalUtilMapFromStringToString>) NIL_CHK(params)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params ID] withNSString:id__];
  [((id<ElementalUtilMapFromStringToString>) NIL_CHK(params)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params ACCESS_TOKEN] withNSString:token_];
  [((id<ComGoodowRealtimeChannelRpcRpc>) NIL_CHK(rpc_)) getWithNSString:[ComGoodowRealtimeChannelRpcConstants_Services REVISION] withElementalUtilMapFromStringToString:params withComGoodowRealtimeChannelRpcRpc_RpcCallback:[[ComGoodowRealtimeChannelRpcSaveService_$1 alloc] initWithComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:callback]];
}

- (void)submitOperationsWithNSString:(NSString *)sessionId
                             withInt:(int)revision
            withElementalUtilArrayOf:(id<ElementalUtilArrayOf>)operations
withComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:(id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>)callback {
  id<ElementalUtilMapFromStringToString> params = [ElementalUtilCollections mapFromStringToString];
  [((id<ElementalUtilMapFromStringToString>) NIL_CHK(params)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params ID] withNSString:id__];
  [((id<ElementalUtilMapFromStringToString>) NIL_CHK(params)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params ACCESS_TOKEN] withNSString:token_];
  [((id<ElementalUtilMapFromStringToString>) NIL_CHK(params)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params SESSION_ID] withNSString:sessionId];
  id<EMJsonObject> formData = [EMJson createObject];
  [((id<EMJsonObject>) NIL_CHK(formData)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params REVISION] withDouble:revision];
  [((id<EMJsonObject>) NIL_CHK(formData)) putWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params CHANGES] withEMJsonValue:[self serializeWithElementalUtilArrayOf:operations]];
  [((id<ComGoodowRealtimeChannelRpcRpc>) NIL_CHK(rpc_)) postWithNSString:[ComGoodowRealtimeChannelRpcConstants_Services SAVE] withElementalUtilMapFromStringToString:params withNSString:[((id<EMJsonObject>) NIL_CHK(formData)) toJson] withComGoodowRealtimeChannelRpcRpc_RpcCallback:[[ComGoodowRealtimeChannelRpcSaveService_$2 alloc] initWithComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:callback]];
}

- (id<EMJsonValue>)serializeWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)ops {
  return [((id<EMJsonFactory>) [EMJson instance]) parseWithNSString:[NSString stringWithFormat:@"[%@]", [((id<ElementalUtilArrayOf>) NIL_CHK(ops)) join]]];
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeChannelRpcSaveService class]) {
    ComGoodowRealtimeChannelRpcSaveService_log_ = [JavaUtilLoggingLogger getLoggerWithNSString:[[IOSClass classWithClass:[ComGoodowRealtimeChannelRpcSaveService class]] getName]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeChannelRpcSaveService *typedCopy = (ComGoodowRealtimeChannelRpcSaveService *) copy;
  typedCopy.rpc = rpc_;
  typedCopy.id_ = id__;
  typedCopy.token = token_;
}

@end
@implementation ComGoodowRealtimeChannelRpcSaveService_$1

@synthesize val$callback = val$callback_;

- (void)onConnectionErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onConnectionErrorWithJavaLangThrowable:e];
}

- (void)onFatalErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onFatalErrorWithJavaLangThrowable:e];
}

- (void)onSuccessWithNSString:(NSString *)data {
  [((JavaUtilLoggingLogger *) NIL_CHK([ComGoodowRealtimeChannelRpcSaveService log])) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel FINE] withNSString:data];
  id<EMJsonObject> connectResponse = ((id<EMJsonObject>) [ComGoodowRealtimeChannelRpcRpcUtil evalPrefixedWithNSString:data]);
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onSuccessWithInt:(int) [((id<EMJsonObject>) NIL_CHK(connectResponse)) getNumberWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params REVISION]]];
}

- (id)initWithComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:(id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>)capture$0 {
  if ((self = [super init])) {
    val$callback_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeChannelRpcSaveService_$1 *typedCopy = (ComGoodowRealtimeChannelRpcSaveService_$1 *) copy;
  typedCopy.val$callback = val$callback_;
}

@end
@implementation ComGoodowRealtimeChannelRpcSaveService_$2

@synthesize val$callback = val$callback_;

- (void)onConnectionErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onConnectionErrorWithJavaLangThrowable:e];
}

- (void)onFatalErrorWithJavaLangThrowable:(JavaLangThrowable *)e {
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onFatalErrorWithJavaLangThrowable:e];
}

- (void)onSuccessWithNSString:(NSString *)data {
  id<EMJsonObject> json = ((id<EMJsonObject>) [ComGoodowRealtimeChannelRpcRpcUtil evalPrefixedWithNSString:data]);
  [((id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>) NIL_CHK(val$callback_)) onSuccessWithInt:(int) [((id<EMJsonObject>) NIL_CHK(json)) getNumberWithNSString:[ComGoodowRealtimeChannelRpcConstants_Params REVISION]]];
}

- (id)initWithComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback:(id<ComGoodowRealtimeChannelOperationGenericOperationChannel_SendOpService_Callback>)capture$0 {
  if ((self = [super init])) {
    val$callback_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeChannelRpcSaveService_$2 *typedCopy = (ComGoodowRealtimeChannelRpcSaveService_$2 *) copy;
  typedCopy.val$callback = val$callback_;
}

@end
