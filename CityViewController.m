//
//  CityViewController.m
//  Assessment_Week2
//
//  Created by tbredemeier on 5/22/14.
//  Copyright (c) 2014 Mobile Makers Academy. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()
@property (strong, nonatomic) IBOutlet UILabel *cityLabel;
@property (strong, nonatomic) IBOutlet UILabel *stateLabel;

@end

@implementation CityViewController

- (IBAction)onDoneButtonPressed:(id)sender
{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.cityLabel.text = self.city.city;
    self.stateLabel.text = self.city.state;
}

@end
