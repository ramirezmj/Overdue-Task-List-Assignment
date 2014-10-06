//
//  Task.h
//  Overdue Task List Assignment
//
//  Created by Jose Manuel Ramirez Martinez on 06/10/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSDate *date;
@property (nonatomic) BOOL isCompleted;

- (id)initWithData:(NSDictionary *)data;

@end
