//
//  Person.h
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSString *number;

+(Person*)New: (NSString*)first LastName: (NSString*)last number: (NSString*)num;

@end
