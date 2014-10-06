//
//  DetailTaskViewController.h
//  Overdue Task List Assignment
//
//  Created by Jose Manuel Ramirez Martinez on 06/10/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "EditTaskViewController.h"

@protocol DetailTaskViewControllerDelegate <NSObject>

- (void)updateTask;

@end

@interface DetailTaskViewController : UIViewController <EditTaskViewControllerDelegate>

@property (strong, nonatomic) Task *task;
@property (weak, nonatomic) id <DetailTaskViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)editBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
