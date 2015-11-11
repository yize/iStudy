//
//  BNRHpnosisViewController.m
//  HypnoNerd
//
//  Created by yize on 15/11/11.
//  Copyright © 2015年 yize. All rights reserved.
//

#import "BNRHpnosisViewController.h"
#import "CircleView.h"

@implementation BNRHpnosisViewController

-(void)loadView
{
    CircleView *backgroundView = [[CircleView alloc]init];
    self.view = backgroundView;
}

-(instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Hypnotize";
        UIImage *i  = [UIImage imageNamed:@"Hypno"];
        self.tabBarItem.image = i;
    }
    return self;
}

@end
