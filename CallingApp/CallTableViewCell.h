//
//  CallTableViewCell.h
//  CallingApp
//
//  Created by Admin on 03.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "Call.h"

@interface CallTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *firstName;
@property (strong, nonatomic) IBOutlet UILabel *lastName;
@property (strong, nonatomic) IBOutlet UILabel *number;
@property (strong, nonatomic) IBOutlet UILabel *date;

-(void)setFirst:(NSString*)first last:(NSString*)last num:(NSString*)num andDate:(NSDate*)date;
-(void)setWithCall:(Call*)call;

@end
