//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/id/IdGenerator.java
//
//  Created by retechretech on 13-5-25.
//

@class IOSCharArray;
@class JavaUtilRandom;

#import "JreEmulation.h"

@interface ComGoodowRealtimeIdIdGenerator : NSObject {
 @public
  JavaUtilRandom *random_;
}

@property (nonatomic, strong) JavaUtilRandom *random;

+ (IOSCharArray *)ALPHABET;
- (id)init;
- (id)initWithJavaUtilRandom:(JavaUtilRandom *)random;
- (NSString *)nextWithInt:(int)length;
@end
