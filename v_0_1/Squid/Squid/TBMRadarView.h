//
//  TBMRadarView.h
//  Squid
//
//  Created by Tom on 3/16/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBMLocationItem.h"

@interface TBMRadarView : UIView

@property (strong, nonatomic) NSArray *locations;
@property (strong, nonatomic) TBMLocationItem *currentLocation;
@property (strong, nonatomic) UIColor *circleColor;
@property (nonatomic) double heading;

@end
