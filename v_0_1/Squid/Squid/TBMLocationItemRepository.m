//
//  TBMLocationItemRepository.m
//  Squid
//
//  Created by Tom on 3/23/14.
//  Copyright (c) 2014 The Big Mud. All rights reserved.
//

#import "TBMLocationItemRepository.h"
#import "TBMLocationItem.h"

@implementation TBMLocationItemRepository

-(NSArray *)transportations
{
    NSMutableArray *locationArray = [[NSMutableArray alloc]init];
    
    TBMLocationItem *item = nil;
    
    // Sukhumvit line
    item = [[TBMLocationItem alloc]initWithTitle:@"Mo Chit" latitude:13.802439 longitude:100.55375 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Saphan Khwai" latitude:13.793639 longitude:100.549684 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Ari" latitude:13.779777 longitude:100.544694 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Sanam Pao" latitude:13.772364 longitude:100.542038 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Victory Monument" latitude:13.762535 longitude:100.536999 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Phaya Thai" latitude:13.756813 longitude:100.533779 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Ratchathewi" latitude:13.751638 longitude:100.531569 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Siam" latitude:13.745516 longitude:100.534604 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];

    item = [[TBMLocationItem alloc]initWithTitle:@"Chit Lom" latitude:13.744066 longitude:100.543112 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Phloen Chit" latitude:13.743056 longitude:100.548848 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Nana" latitude:13.740483 longitude:100.555529 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Asok" latitude:13.736966 longitude:100.560497 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Phrom Phong" latitude:13.730392 longitude:100.569823 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Thong Lo" latitude:13.724218 longitude:100.578572 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Ekhamai" latitude:13.719449 longitude:100.585277 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Phra Khanong" latitude:13.715204 longitude:100.591234 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"On Nut" latitude:13.705582 longitude:100.601077 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Bang Chak" latitude:13.696591 longitude:100.605487 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Punnawithi" latitude:13.689386 longitude:100.609024 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Udom Suk" latitude:13.679915 longitude:100.60959 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Bang Na" latitude:13.668291 longitude:100.604803 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Bearing" latitude:13.661207 longitude:100.601907 altitude:0.0 note:nil];
    item.group = 1;
    [locationArray addObject:item];
    
    
    // Silom line
    item = [[TBMLocationItem alloc]initWithTitle:@"National Stadium" latitude:13.746451 longitude:100.529189 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Siam" latitude:13.745516 longitude:100.534604 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Ratchadamri" latitude:13.73933 longitude:100.539488 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Sala Daeng" latitude:13.728457 longitude:100.53419 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Chong Nonsi" latitude:13.723719 longitude:100.529348 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Surasak" latitude:13.719263 longitude:100.521618 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Saphan Taksin" latitude:13.718749 longitude:100.514145 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Krung Thon Buri" latitude:13.720892 longitude:100.502897 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Wongwian Yai" latitude:13.72102 longitude:100.495304 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Pho Nimit" latitude:13.719227 longitude:100.486041 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Talat Phlu" latitude:13.71424 longitude:100.476806 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Wutthakat" latitude:13.712903 longitude:100.469193 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    item = [[TBMLocationItem alloc]initWithTitle:@"Bang Wa" latitude:13.720807 longitude:100.457768 altitude:0.0 note:nil];
    item.group = 2;
    [locationArray addObject:item];
    
    return locationArray;
}

@end
