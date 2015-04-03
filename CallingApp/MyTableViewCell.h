//
//  MyTableViewCell.h
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface MyTableViewCell : UITableViewCell 
@property (weak, nonatomic) IBOutlet UILabel *firstName;
@property (weak, nonatomic) IBOutlet UILabel *lastName;
@property (weak, nonatomic) IBOutlet UILabel *number;

-(void)setPerson:(Person*)p;

@end
