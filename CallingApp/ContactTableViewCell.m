//
//  MyTableViewCell.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "ContactTableViewCell.h"

@implementation ContactTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setPerson:(Person *)p{
    self.firstName.text = [p valueForKey:@"firstName"];
    self.lastName.text = [p valueForKey:@"lastName"];
    self.number.text = [p valueForKey:@"number"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
