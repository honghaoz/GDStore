//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/databinding/Databinding.java
//
//  Created by retechretech on 13-5-25.
//

@class GDRBinding;
@class GDRCollaborativeString;

#import "JreEmulation.h"
#import "org/timepedia/exporter/client/Exportable.h"

@interface GDRDatabinding : NSObject < OrgTimepediaExporterClientExportable > {
}

+ (GDRBinding *)bindStringWithGDRCollaborativeString:(GDRCollaborativeString *)string
                                              withId:(id)textInputElement;
- (id)init;
@end

typedef GDRDatabinding ComGoodowRealtimeDatabindingDatabinding;
