//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/Model.java
//
//  Created by retechretech on 13-5-25.
//

@class GDRCollaborativeList;
@class GDRCollaborativeMap;
@class GDRCollaborativeObject;
@class GDRCollaborativeString;
@class GDRDocument;
@class GDRDocumentBridge;
@class GDREventTypeEnum;
@class GDRIndexReference;
@class IOSObjectArray;
@class JavaUtilLoggingLogger;
@protocol ComGoodowRealtimeOperationOperation;
@protocol GDREventHandler;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "com/goodow/realtime/EventTarget.h"

@interface GDRModel : NSObject < GDREventTarget > {
 @public
  BOOL isReadOnly__;
  BOOL canRedo__;
  BOOL canUndo__;
  id<JavaUtilMap> objects_;
  id<JavaUtilMap> indexReferences_;
  GDRDocument *document_;
  GDRDocumentBridge *bridge_;
}

@property (nonatomic, assign) BOOL isReadOnly_;
@property (nonatomic, assign) BOOL canRedo_;
@property (nonatomic, assign) BOOL canUndo_;
@property (nonatomic, strong) id<JavaUtilMap> objects;
@property (nonatomic, strong) id<JavaUtilMap> indexReferences;
@property (nonatomic, strong) GDRDocument *document;
@property (nonatomic, strong) GDRDocumentBridge *bridge;

+ (NSString *)ROOT_ID;
+ (NSString *)EVENT_HANDLER_KEY;
+ (JavaUtilLoggingLogger *)log;
- (id)initWithGDRDocumentBridge:(GDRDocumentBridge *)bridge
                withGDRDocument:(GDRDocument *)document;
- (void)addEventListenerWithGDREventTypeEnum:(GDREventTypeEnum *)type
                         withGDREventHandler:(id<GDREventHandler>)handler
                                    withBOOL:(BOOL)opt_capture;
- (void)addUndoRedoStateChangedListenerWithGDREventHandler:(id<GDREventHandler>)handler;
- (void)beginCompoundOperation:(NSString *)opt_name;
- (BOOL)canRedo;
- (BOOL)canUndo;
- (id)createWithNSString:(NSString *)ref
       withNSObjectArray:(IOSObjectArray *)var_args;
- (GDRCollaborativeList *)createListWithNSObjectArray:(IOSObjectArray *)opt_initialValue;
- (GDRCollaborativeMap *)createMapWithJavaUtilMap:(id<JavaUtilMap>)opt_initialValue;
- (GDRCollaborativeString *)createString:(NSString *)opt_initialValue;
- (void)endCompoundOperation;
- (GDRCollaborativeMap *)getRoot;
- (BOOL)isInitialized;
- (BOOL)isReadOnly;
- (void)redo;
- (void)removeEventListenerWithGDREventTypeEnum:(GDREventTypeEnum *)type
                            withGDREventHandler:(id<GDREventHandler>)handler
                                       withBOOL:(BOOL)opt_capture;
- (void)undo;
- (void)beginCreationCompoundOperation;
- (GDRIndexReference *)createIndexReferenceWithNSString:(NSString *)referencedObject
                                                withInt:(int)index
                                               withBOOL:(BOOL)canBeDeleted;
- (void)createRoot;
- (GDRCollaborativeObject *)getObjectWithNSString:(NSString *)objectId;
- (void)setIndexReferenceIndexWithNSString:(NSString *)referencedObject
                                  withBOOL:(BOOL)isInsert
                                   withInt:(int)index
                                   withInt:(int)length
                              withNSString:(NSString *)sessionId
                              withNSString:(NSString *)userId;
- (NSString *)generateObjectId;
- (void)initializeCreateWithInt:(int)type
withComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)opt_initialValue
                   withNSString:(NSString *)id_ OBJC_METHOD_FAMILY_NONE;
- (void)registerIndexReferenceWithNSString:(NSString *)indexReference
                              withNSString:(NSString *)referencedObject;
@end

typedef GDRModel ComGoodowRealtimeModel;
