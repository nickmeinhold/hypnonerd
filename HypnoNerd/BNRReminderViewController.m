//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Nick Meinhold on 25/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        // set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        // create a UIImage from a file
        // this will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        
        // put that image in the tab bar item
        self.tabBarItem.image = i;
    }
    
    return self;
}


-(IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
