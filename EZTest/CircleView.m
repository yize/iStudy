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
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height);
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    for(float currentRadius = maxRadius;currentRadius>0;currentRadius-=20){
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];
    }
    
    path.lineWidth = 10.0;
    [[UIColor lightGrayColor]setStroke];
    [path stroke];
}

@end
