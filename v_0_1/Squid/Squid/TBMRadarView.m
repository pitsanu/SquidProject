//
//  TBMRadarView.m
//  Squid
//
//  Created by Tom on 3/16/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import "TBMRadarView.h"

@interface TBMRadarView()
@end

@implementation TBMRadarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_linen.png"]];
        self.circleColor = [UIColor yellowColor];
        self.locations = [[NSArray alloc]init];
        self.currentLocation = [TBMLocationItem testLocation1];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    
    
    // Radius
    float nodeRadius = 10.0;
    float gap = 25.0;
    float outterRadius = bounds.size.width / 2.0 - gap;
    
    // Draw user at center
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path addArcWithCenter:center
                    radius:nodeRadius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
    path.lineWidth = 2.0;
    [[UIColor cyanColor] setStroke];
    [path stroke];
    
    
    [path moveToPoint:CGPointMake(center.x + outterRadius, center.y)];
    [path addArcWithCenter:center
                    radius:outterRadius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
    path.lineWidth = 0.5;
    [[UIColor grayColor] setStroke];
    [path stroke];
    
    
    // Draw BTS stations
    
    for(TBMLocationItem *item in _locations)
    {
        path = [[UIBezierPath alloc] init];
        
        CGPoint nodeCenter = CGPointMake(0.0, 0.0);
     
        double dx = item.longitude - _currentLocation.longitude;
        double dy = item.latitude - _currentLocation.latitude;
        
        //double dx = _currentLocation.longitude - item.longitude;
        //double dy = _currentLocation.latitude - item.latitude;
        
        double R = sqrt(pow(dx, 2.0) + pow(dy, 2.0));
        
        nodeCenter.x = (outterRadius * dx / R);// + center.x;
        nodeCenter.y = (outterRadius * dy / R);// + center.y;
      
        // Calculate rotation factor from heading
        double radianDegree = (_heading) * M_PI / 180.0;
        double s = sin(radianDegree);
        double c = cos(radianDegree);
        
        // Counter clock wise
        double xnew = nodeCenter.x * c - nodeCenter.y * s;
        double ynew = nodeCenter.x * s + nodeCenter.y * c;
        
        // Clock wise
        //double xnew = nodeCenter.x * c + nodeCenter.y * s;
        //double ynew = -nodeCenter.x * s + nodeCenter.y * c;
        
        nodeCenter.x = xnew + center.x;
        nodeCenter.y = center.y - ynew;// ynew + center.y;
        
        [path moveToPoint:CGPointMake(nodeCenter.x + nodeRadius, nodeCenter.y)];
        [path addArcWithCenter:nodeCenter
                    radius:nodeRadius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
        if(item.group == 1)
        {
            [[UIColor yellowColor] setStroke];
        }
        else
        {
            [[UIColor greenColor] setStroke];
        }
        
        
        path.lineWidth = 1.0;
        [path stroke];
    }
}


#pragma mark Property methods
-(void)setHeading:(double)heading
{
    _heading = heading;
    
    //CGAffineTransform transform = CGAffineTransformMakeRotation(heading * 180.0 / M_PI);
    //self.transform = transform;
    
    [self setNeedsDisplay];
}

-(void)setCurrentLocation:(TBMLocationItem *)currentLocation
{
    _currentLocation = currentLocation;
    [self setNeedsDisplay];
}
@end
