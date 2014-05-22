//
//  City.m
//  Assessment_Week2
//
//  Created by tbredemeier on 5/22/14.
//  Copyright (c) 2014 Mobile Makers Academy. All rights reserved.
//

#import "City.h"

@implementation City

- (City *)initWithName:(NSString *)city
                 state:(NSString *)state
{
    self.city = city;
    self.state = state;
    return self;
}

@end
