//
//  MyTableViewCell.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setPerson:(Person *)p{
    self.firstName.text = p.firstName;
    self.lastName.text = p.lastName;
    self.number.text = p.number;
    self.number.numberOfLines = 0;
    [self.number sizeToFit];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
