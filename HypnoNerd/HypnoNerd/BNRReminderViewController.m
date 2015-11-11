//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by yize on 15/11/11.
//  Copyright © 2015年 yize. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation BNRReminderViewController

- (IBAction) addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@",date);
}

@end
