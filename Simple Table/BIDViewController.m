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


// viewDidLoad method - created an array to display the table
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


// tableView:numberOfRowsInSection method - this asks how many rows are in a particular section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}


// tableView:cellForRowAtIndexPath method
- (UITableViewCell *)tableView: (UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:SimpleTableIdentifier];
    }
    
    UIImage *image = [UIImage imageNamed:@"star.png"];
                                cell.imageView.image = image;
                
                cell.textLabel.text = self.dwarves[indexPath.row];
                return cell;

}

@end
