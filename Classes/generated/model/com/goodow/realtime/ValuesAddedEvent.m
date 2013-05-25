//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/ValuesAddedEvent.java
//
//  Created by retechretech on 13-5-25.
//

#import "IOSObjectArray.h"
#import "com/goodow/realtime/CollaborativeList.h"
#import "com/goodow/realtime/EventType.h"
#import "com/goodow/realtime/ValuesAddedEvent.h"
#import "com/goodow/realtime/util/ModelFactory.h"

@implementation GDRValuesAddedEvent

@synthesize index = index_;
@synthesize values = values_;

- (id)initWithGDRCollaborativeList:(GDRCollaborativeList *)target
                      withNSString:(NSString *)sessionId
                      withNSString:(NSString *)userId
                           withInt:(int)index
                 withNSObjectArray:(IOSObjectArray *)values {
  if ((self = [super initWithGDREventTypeEnum:[GDREventTypeEnum VALUES_ADDED] withGDRCollaborativeObject:target withNSString:sessionId withNSString:userId withBOOL:NO])) {
    self.index = index;
    self.values = values;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  GDRValuesAddedEvent *typedCopy = (GDRValuesAddedEvent *) copy;
  typedCopy.index = index_;
  typedCopy.values = values_;
}

@end
