//
//  Person.m
//  CallingApp
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "Person.h"

@implementation Person
+(Person*)New: (NSString*)first LastName: (NSString*)last number: (NSString*)num {
    Person *person = [[super alloc] init];
    person.firstName = first;
    person.lastName = last;
    person.number = num;
    return person;
}
@end
