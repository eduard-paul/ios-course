//
//  SecondViewController.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "SecondViewController.h"
#import "MyTableViewCell.h"

@interface SecondViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSArray *list;
@end

@implementation SecondViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.list count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellID = @"Cell2ID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID forIndexPath:indexPath];
    
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.list = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
