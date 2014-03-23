//
//  TBMRadarViewController.m
//  Squid
//
//  Created by Tom on 3/16/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import "TBMRadarViewController.h"
#import "TBMRadarView.h"
#import "TBMLocationItemRepository.h"
#import "TBMLocationItem.h"

@interface TBMRadarViewController()

@property (strong, nonatomic) TBMRadarView *radarView;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (nonatomic) double degree;
@end


@implementation TBMRadarViewController

-(void)loadView
{
    CGRect frame = [UIScreen mainScreen].bounds;
    
    _radarView = [[TBMRadarView alloc] initWithFrame:frame];
    _radarView.locations = [[[TBMLocationItemRepository alloc]init]transportations];
    
    self.view = _radarView;
    
    // Config location manager
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    _locationManager.delegate = self;
}

-(void)viewDidLoad
{
    _degree = 0.0;
    
    if(_locationManager != nil)
    {
        NSLog(@"startUpdatingLocation");
        [_locationManager startUpdatingLocation];
        [_locationManager startUpdatingHeading];
    }
}


-(void)viewWillDisappear:(BOOL)animated
{
    if(_locationManager != nil)
    {
        NSLog(@"stopUpdatingLocation");
        [_locationManager stopUpdatingLocation];
        [_locationManager stopUpdatingHeading];
    }
}

#pragma mark CLLocationManagerDelegate
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *current = [locations lastObject];
    if(current == nil) return;
    
    TBMLocationItem *currentItm = [[TBMLocationItem alloc]init];
    currentItm.latitude = current.coordinate.latitude;
    currentItm.longitude = current.coordinate.longitude;
    
    _radarView.currentLocation = currentItm;

}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    //
}


-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"heading %@", newHeading);
    _radarView.heading = newHeading.trueHeading;
    
} 
@end
