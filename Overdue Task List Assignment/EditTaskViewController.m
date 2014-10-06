//
//  EditTaskViewController.m
//  Overdue Task List Assignment
//
//  Created by Jose Manuel Ramirez Martinez on 06/10/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import "EditTaskViewController.h"

@interface EditTaskViewController ()

@end

@implementation EditTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textField.text = self.task.title;
    self.textView.text = self.task.description;
    self.datePicker.date = self.task.date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self updateTask];
    [self.delegate didUpdateTask];
}

#pragma mark - Helper Methods

- (void)updateTask
{
    self.task.title = self.textField.text;
    self.task.description = self.textView.text;
    self.task.date = self.datePicker.date;
}

@end
