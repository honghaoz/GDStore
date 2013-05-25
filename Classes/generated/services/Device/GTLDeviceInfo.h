/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2013 Google Inc.
 */

//
//  GTLDeviceInfo.h
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   device/v1
// Description:
//   This is an API
// Classes:
//   GTLDeviceInfo (0 custom class methods, 3 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLObject.h"
#else
  #import "GTLObject.h"
#endif

// ----------------------------------------------------------------------------
//
//   GTLDeviceInfo
//

@interface GTLDeviceInfo : GTLObject
@property (copy) NSString *deviceInformation;
@property (copy) NSString *deviceRegistrationID;
@property (retain) NSNumber *timestamp;  // longLongValue
@end
