//
//  TBMLocationItem.h
//  Squid
//
//  Created by Tom on 3/23/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TBMLocationItem : NSObject

@property (nonatomic) int key;
@property (nonatomic) int group;
@property (strong, nonatomic) NSString *title;
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
@property (nonatomic) double altitude;
@property (strong, nonatomic) NSString *note;

-(instancetype)initWithTitle:(NSString *)title latitude:(double)latitude longitude:(double)longitude altitude:(double)altitude note:(NSString *)note;
+(instancetype)bangKok;
+(instancetype)testLocation1;
@end
