//
//  City.h
//  Assessment_Week2
//
//  Created by tbredemeier on 5/22/14.
//  Copyright (c) 2014 Mobile Makers Academy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property NSString *city;
@property NSString *state;

- (City *)initWithName:(NSString *)city
                 state:(NSString *)state;

@end
