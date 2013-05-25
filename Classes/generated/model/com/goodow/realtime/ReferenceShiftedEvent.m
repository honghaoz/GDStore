//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/ReferenceShiftedEvent.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/EventType.h"
#import "com/goodow/realtime/IndexReference.h"
#import "com/goodow/realtime/ReferenceShiftedEvent.h"
#import "com/goodow/realtime/util/ModelFactory.h"

@implementation GDRReferenceShiftedEvent

@synthesize newIndex = newIndex_;
@synthesize oldIndex = oldIndex_;

- (id)initWithGDRIndexReference:(GDRIndexReference *)target
                        withInt:(int)oldIndex
                        withInt:(int)newIndex
                   withNSString:(NSString *)sessionId
                   withNSString:(NSString *)userId {
  if ((self = [super initWithGDREventTypeEnum:[GDREventTypeEnum REFERENCE_SHIFTED] withGDRCollaborativeObject:target withNSString:sessionId withNSString:userId withBOOL:NO])) {
    self.oldIndex = oldIndex;
    self.newIndex = newIndex;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  GDRReferenceShiftedEvent *typedCopy = (GDRReferenceShiftedEvent *) copy;
  typedCopy.newIndex = newIndex_;
  typedCopy.oldIndex = oldIndex_;
}

@end
