//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/channel/SocketListener.java
//
//  Created by retechretech on 13-5-25.
//

@protocol ComGoodowRealtimeChannelChannelError;

#import "JreEmulation.h"

@protocol ComGoodowRealtimeChannelSocketListener < NSObject >
- (void)onClose;
- (void)onErrorWithComGoodowRealtimeChannelChannelError:(id<ComGoodowRealtimeChannelChannelError>)error;
- (void)onMessageWithNSString:(NSString *)message;
- (void)onOpen;
@end
