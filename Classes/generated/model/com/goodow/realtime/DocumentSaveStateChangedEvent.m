//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/DocumentSaveStateChangedEvent.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/Document.h"
#import "com/goodow/realtime/DocumentSaveStateChangedEvent.h"
#import "com/goodow/realtime/util/ModelFactory.h"

@implementation GDRDocumentSaveStateChangedEvent

@synthesize isPending = isPending_;
@synthesize isSaving = isSaving_;

- (id)initWithGDRDocument:(GDRDocument *)document
                 withBOOL:(BOOL)isSaving
                 withBOOL:(BOOL)isPending {
  if ((self = [super init])) {
    self.isSaving = isSaving;
    self.isPending = isPending;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  GDRDocumentSaveStateChangedEvent *typedCopy = (GDRDocumentSaveStateChangedEvent *) copy;
  typedCopy.isPending = isPending_;
  typedCopy.isSaving = isSaving_;
}

@end
