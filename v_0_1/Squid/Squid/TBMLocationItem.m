//
//  TBMLocationItem.m
//  Squid
//
//  Created by Tom on 3/23/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import "TBMLocationItem.h"

@implementation TBMLocationItem

#pragma mark Initialization
-(instancetype)init
{
    return [self initWithTitle:nil latitude:0.0 longitude:0.0 altitude:0.0 note:nil];
}

-(instancetype)initWithTitle:(NSString *)title latitude:(double)latitude longitude:(double)longitude altitude:(double)altitude note:(NSString *)note
{
    self = [super init];
    
    if(self != nil)
    {
        _title = title;
        _latitude = latitude;
        _longitude = longitude;
        _altitude = altitude;
        _note = note;
    }
    
    return self;
}

#pragma mark Class methods
+(instancetype)bangKok
{
    TBMLocationItem *location = [[TBMLocationItem alloc]initWithTitle:@"Royal Palace"
                                                             latitude:13.755155
                                                            longitude:100.493117
                                                             altitude:0.0 note:nil];
    return location;
}

+(instancetype)testLocation1
{
    TBMLocationItem *location = [[TBMLocationItem alloc]initWithTitle:@"Test Location 1"
                                                             latitude:13.746174
                                                            longitude:100.530764
                                                             altitude:0.0 note:nil];
    return location;
}
@end
