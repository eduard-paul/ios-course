//
//  Person.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize number = _number;

+(Person*)New: (NSString*)first LastName: (NSString*)last number: (NSString*)num context:(NSManagedObjectContext *)context {
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person" inManagedObjectContext:context];
    Person *person = [[Person alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
    person.firstName = first;
    person.lastName = last;
    person.number = num;
    return person;
}
@end
