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

-(void)loadView{
    CircleView *backgroundView = [[CircleView alloc]init];
    self.view = backgroundView;
}

@end
