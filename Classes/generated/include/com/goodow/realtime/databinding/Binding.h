//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/databinding/Binding.java
//
//  Created by retechretech on 13-5-25.
//

@class GDRCollaborativeObject;

#import "JreEmulation.h"
#import "com/goodow/realtime/Disposable.h"

@interface GDRBinding : NSObject < GDRDisposable > {
 @public
  GDRCollaborativeObject *collaborativeObject_;
  id domElement_;
}

@property (nonatomic, strong) GDRCollaborativeObject *collaborativeObject;
@property (nonatomic, strong) id domElement;

- (id)initWithGDRCollaborativeObject:(GDRCollaborativeObject *)collaborativeObject
                              withId:(id)domElement;
- (GDRCollaborativeObject *)getCollaborativeObject;
- (id)getDomElement;
- (void)unbind;
@end

typedef GDRBinding ComGoodowRealtimeDatabindingBinding;
