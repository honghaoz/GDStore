//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/UndoRedoStateChangedEvent.java
//
//  Created by retechretech on 13-5-25.
//

@class GDRModel;

#import "JreEmulation.h"
#import "com/goodow/realtime/Disposable.h"

@interface GDRUndoRedoStateChangedEvent : NSObject < GDRDisposable > {
 @public
  BOOL canRedo_;
  BOOL canUndo_;
}

@property (nonatomic, assign) BOOL canRedo;
@property (nonatomic, assign) BOOL canUndo;

- (id)initWithGDRModel:(GDRModel *)model
              withBOOL:(BOOL)canUndo
              withBOOL:(BOOL)canRedo;
@end

typedef GDRUndoRedoStateChangedEvent ComGoodowRealtimeUndoRedoStateChangedEvent;
