//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/channel/Constants.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/store/channel/Constants.h"

@interface ComGoodowRealtimeStoreChannelConstants : NSObject
@end

@implementation ComGoodowRealtimeStoreChannelConstants

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants = { "Constants", "com.goodow.realtime.store.channel", NULL, 0x201, 0, NULL, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants;
}

@end

@interface ComGoodowRealtimeStoreChannelConstants_Topic : NSObject
@end

NSString * ComGoodowRealtimeStoreChannelConstants_Topic_STORE_ = @"realtime/store";
NSString * ComGoodowRealtimeStoreChannelConstants_Topic_OPS_ = @"/_ops";
NSString * ComGoodowRealtimeStoreChannelConstants_Topic_WATCH_ = @"/_watch";
NSString * ComGoodowRealtimeStoreChannelConstants_Topic_PRESENCE_ = @"/_presence";
NSString * ComGoodowRealtimeStoreChannelConstants_Topic_DOCUMENT_ERROR_ = @"document_error";

@implementation ComGoodowRealtimeStoreChannelConstants_Topic

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcFieldInfo fields[] = {
    { "STORE_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Topic_STORE_,  },
    { "OPS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Topic_OPS_,  },
    { "WATCH_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Topic_WATCH_,  },
    { "PRESENCE_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Topic_PRESENCE_,  },
    { "DOCUMENT_ERROR_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Topic_DOCUMENT_ERROR_,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants_Topic = { "Topic", "com.goodow.realtime.store.channel", "Constants", 0x209, 0, NULL, 5, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants_Topic;
}

@end

@interface ComGoodowRealtimeStoreChannelConstants_Key : NSObject
@end

NSString * ComGoodowRealtimeStoreChannelConstants_Key_ID_ = @"id";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OP_DATA_ = @"opData";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OP_ = @"op";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OPS_ = @"ops";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_SESSION_ID_ = @"sid";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_VERSION_ = @"v";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_SNAPSHOT_ = @"snapshot";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_COLLABORATORS_ = @"collaborators";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_IS_JOINED_ = @"isJoined";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_IS_ME_ = @"isMe";

@implementation ComGoodowRealtimeStoreChannelConstants_Key

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcFieldInfo fields[] = {
    { "ID_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_ID_,  },
    { "OP_DATA_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OP_DATA_,  },
    { "OP_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OP_,  },
    { "OPS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OPS_,  },
    { "SESSION_ID_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_SESSION_ID_,  },
    { "VERSION_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_VERSION_,  },
    { "SNAPSHOT_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_SNAPSHOT_,  },
    { "COLLABORATORS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_COLLABORATORS_,  },
    { "IS_JOINED_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_IS_JOINED_,  },
    { "IS_ME_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_IS_ME_,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants_Key = { "Key", "com.goodow.realtime.store.channel", "Constants", 0x209, 0, NULL, 10, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants_Key;
}

@end
