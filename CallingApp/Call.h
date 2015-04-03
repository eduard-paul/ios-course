//
//  Call.h
//  CallingApp
//
//  Created by Admin on 03.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Call : NSManagedObject

@property NSString *firstName;
@property NSString *lastName;
@property NSString *number;
@property NSDate *date;

+(Call*)New: (NSString*)first LastName: (NSString*)last number: (NSString*)num date:(NSDate*)date context:(NSManagedObjectContext *)context;

@end
