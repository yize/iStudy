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
@end

@implementation BNRReminderViewController

- (IBAction) addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@",date);
    UILocalNotification *note = [[UILocalNotification alloc]init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}


-(instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName: nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title=@"Reminder";
        UIImage *i = [UIImage imageNamed:@"Time"];
        self.tabBarItem.image = i;
        
    }
    return self;
}
@end
