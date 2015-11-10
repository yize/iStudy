//
//  CircleView.m
//  EZTest
//
//  Created by yize on 15/11/7.
//  Copyright © 2015年 yize. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2;
    center.y = bounds.origin.y + bounds.size.height/2;
    float radius = (MIN(bounds.size.width, bounds.size.height)/2);
    
}

@end
