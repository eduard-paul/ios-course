//
//  SecondViewController.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () 
@property NSArray *list;
@end

@implementation SecondViewController


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
