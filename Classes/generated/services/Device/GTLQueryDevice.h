/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2013 Google Inc.
 */

//
//  GTLQueryDevice.h
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   device/v1
// Description:
//   This is an API
// Classes:
//   GTLQueryDevice (7 custom class methods, 8 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLQuery.h"
#else
  #import "GTLQuery.h"
#endif

@class GTLDeviceInfo;

@interface GTLQueryDevice : GTLQuery

//
// Parameters valid on all methods.
//

// Selector specifying which fields to include in a partial response.
@property (copy) NSString *fields;

//
// Method-specific parameters; see the comments below for more information.
//
@property (copy) NSString *cursor;
@property (copy) NSString *deviceInformation;
@property (copy) NSString *deviceRegistrationID;
// identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
@property (copy) NSString *identifier;
@property (assign) NSInteger limit;
@property (copy) NSString *message;
@property (assign) long long timestamp;

#pragma mark -
#pragma mark Service level methods
// These create a GTLQueryDevice object.

// Method: device.getDeviceInfo
// Fetches a GTLDeviceInfo.
+ (id)queryForGetDeviceInfoWithIdentifier:(NSString *)identifier;

// Method: device.insertDeviceInfo
// Fetches a GTLDeviceInfo.
+ (id)queryForInsertDeviceInfoWithObject:(GTLDeviceInfo *)object;

// Method: device.insertOrUpdateDeviceInfo
//  Optional:
//   timestamp: long long
// Fetches a GTLDeviceInfo.
+ (id)queryForInsertOrUpdateDeviceInfoWithDeviceRegistrationID:(NSString *)deviceRegistrationID
                                             deviceInformation:(NSString *)deviceInformation;

// Method: device.listDeviceInfo
//  Optional:
//   cursor: NSString
//   limit: NSInteger
// Fetches a GTLDeviceCollectionResponseDeviceInfo.
+ (id)queryForListDeviceInfo;

// Method: device.removeDeviceInfo
// Fetches a GTLDeviceInfo.
+ (id)queryForRemoveDeviceInfoWithIdentifier:(NSString *)identifier;

// Method: device.sendMessage
+ (id)queryForSendMessageWithMessage:(NSString *)message;

// Method: device.updateDeviceInfo
// Fetches a GTLDeviceInfo.
+ (id)queryForUpdateDeviceInfoWithObject:(GTLDeviceInfo *)object;

@end
