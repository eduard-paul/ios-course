//
//  CallTableViewCell.m
//  CallingApp
//
//  Created by Admin on 03.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "CallTableViewCell.h"

@implementation CallTableViewCell

-(void)setFirst:(NSString*)first last:(NSString*)last num:(NSString*)num andDate:(NSDate*)date{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"HH:mm:ss dd MMM yyyy"];
    NSString *strDate = [dateFormatter stringFromDate:date];
    
    self.firstName.text = first;
    self.lastName.text = last;
    self.number.text = num;
    self.date.text = strDate;
}

-(void)setWithCall:(Call*)call {
    [self setFirst:[call valueForKey:@"firstName"] last:[call valueForKey:@"lastName"] num:[call valueForKey:@"number"] andDate:[call valueForKey:@"date"]];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
