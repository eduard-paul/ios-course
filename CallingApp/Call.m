//
//  Call.m
//  CallingApp
//
//  Created by Admin on 03.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "Call.h"

@implementation Call

@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize number = _number;
@synthesize date = _date;

+(Call*)New: (NSString*)first LastName: (NSString*)last number: (NSString*)num date:(NSDate*)date context:(NSManagedObjectContext *)context {
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Call" inManagedObjectContext:context];
    Call *call = [[Call alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
    call.firstName = first;
    call.lastName = last;
    call.number = num;
    call.date = date;
    return call;
}

@end
