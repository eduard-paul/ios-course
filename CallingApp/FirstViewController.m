//
//  FirstViewController.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "FirstViewController.h"
#import "MyTableViewCell.h"
#import "Person.h"
@interface FirstViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UINavigationBar *navigBar;
@property (weak, nonatomic) IBOutlet UITableView *table;
@property NSMutableArray *persons;
@end

@implementation FirstViewController


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Person *p = [self.persons objectAtIndex:indexPath.row];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Calling.." message: p.number delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    Person *p = [self.persons objectAtIndex:indexPath.row];
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"Delete contact: %@ %@",p.firstName, p.lastName);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.persons count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellID = @"CellID";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID forIndexPath:indexPath];
    [cell setPerson:[self.persons objectAtIndex:indexPath.row]];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigBar.topItem.title = @"";
    Person *p = [Person New:@"Longfirstname" LastName:@"longlastname" number:@"+7(962)-513-75-80"];
    self.persons = [NSMutableArray arrayWithObject:p];
    [self.persons addObject:p];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
