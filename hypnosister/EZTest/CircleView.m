//
//  CircleView.m
//  EZTest
//
//  Created by yize on 15/11/7.
//  Copyright © 2015年 yize. All rights reserved.
//

#import "CircleView.h"

@interface CircleView()
@property (strong,nonatomic) UIColor *circleColor;
@end

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
        [path moveToPoint:CGPointMake(center.x+currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];
    }
    
    path.lineWidth = 10.0;
    [[UIColor lightGrayColor]setStroke];
    [self.circleColor setStroke];
    [path stroke];
    
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(currentContext);
    
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    
    [logoImage drawInRect:CGRectMake(0, 0, 50, 50)];
    
    CGContextRestoreGState(currentContext);
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)setCircleColor:(UIColor *)circleColor{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@ was touched",self);
    
    float red = (arc4random()%100)/100.0;
    float green = (arc4random()%100)/100.0;
    float blue = (arc4random()%100)/100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.circleColor = randomColor;
    
}

@end
