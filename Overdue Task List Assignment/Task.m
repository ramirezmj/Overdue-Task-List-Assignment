//
//  Task.m
//  Overdue Task List Assignment
//
//  Created by Jose Manuel Ramirez Martinez on 06/10/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import "Task.h"

@implementation Task

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    
    if (self) {
        self.title = data[TASK_TITLE];
        self.description = data[TASK_DESCRIPTION];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    return self;
}

- (id)init
{
    self = [self initWithData:nil];
    
    return self;
}

@end
