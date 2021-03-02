//
//  Draw.m
//  draw
//
//  Created by Derrick Ryan on 3/1/21.
//

#import "Draw.h"

@implementation Draw
@synthesize x, y;
@synthesize count;

// custom drawing
- (void)drawRect:(CGRect)rect {
    CGRect bounds = [self bounds];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //background color
    if(count > 3)
        [[UIColor blackColor] setFill];
    else
        [[UIColor blueColor] setFill];
    CGContextFillRect(context, bounds);
    
    //circle color
    [[UIColor redColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(x, y, 30, 30));
}

// touches on the screen
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for(UITouch *t in touches){
        CGPoint p = [t locationInView:self];
        x = p.x;
        y = p.y;
        [self setNeedsDisplay];
        count++;
    }
}

-(void)animation{
    x += 2;
    y += 2;
    [self setNeedsDisplay];
}

@end
