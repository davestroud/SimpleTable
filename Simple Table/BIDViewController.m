//
//  BIDViewController.m
//  Simple Table
//
//  Created by DAVID STROUD on 10/16/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad;
{
    [super viewDidLoad];
	self.dwarves = @[@"Sleepy", @"Doc", @"Grumpy", @"Dopey", @"Thorin",
                     @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin",
                     @"Fili", @"Kili", @"Oin", @"Gloin", @"Bifur",
                     @"Borur", @"Bombur"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView: (UITableViewCell *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
                
                cell.textLabel.text = self.dwarves[indexPath.row];
                return cell;
}

@end
