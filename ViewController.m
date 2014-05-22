//
//  ViewController.m
//  Assessment_Week2
//
//  Created by tbredemeier on 5/22/14.
//  Copyright (c) 2014 Mobile Makers Academy. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    City *city0 = [[City alloc] initWithName:@"Chicago"
                                       state:@"Illinois"];
    City *city1 = [[City alloc] initWithName:@"Denver"
                                       state:@"Colorado"];
    City *city2 = [[City alloc] initWithName:@"San Francisco"
                                       state:@"California"];
    City *city3 = [[City alloc] initWithName:@"Fargo"
                                       state:@"North Dakota"];
    City *city4 = [[City alloc] initWithName:@"Grovers Corners"
                                       state:@"New Hampshire"];
    City *city5 = [[City alloc] initWithName:@"Austin"
                                       state:@"Texas"];

    self.cityStates = [NSMutableArray arrayWithObjects:city0, city1, city2, city3, city4, city5, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cityStates.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    City *city = [self.cityStates objectAtIndex:indexPath.row];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"CityCell"];
    cell.textLabel.text = city.city;

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    NSIndexPath *selectedPath = self.tableView.indexPathForSelectedRow;
    City *selectedCity = [self.cityStates objectAtIndex:selectedPath.row];
    CityViewController *cityViewController = segue.destinationViewController;
    cityViewController.city = selectedCity;
}

- (IBAction)unwindFromCityViewController:(UIStoryboardSegue *)segue
{
}

@end
