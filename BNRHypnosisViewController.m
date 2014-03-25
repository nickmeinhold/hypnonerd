//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Nick Meinhold on 25/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        // set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        // create a UIImage from a file
        // this will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        // put that image in the tab bar item
        self.tabBarItem.image = i;
    }
    
    return self;
}

-(void)loadView
{
    // create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    // set it as *the* view of the view controller
    self.view = backgroundView; 
    
}

@end
