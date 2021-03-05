//
//  Draw.m
//  draw
//
//  Created by Derrick Ryan on 3/1/21.
//

#import "Draw.h"

@implementation Draw
@synthesize x1, y1;
@synthesize x2, y2;
@synthesize count;

//custom drawing
- (void)drawRect:(CGRect)rect {
    CGRect bounds = [self bounds];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //background color
    if(count % 3 == 0)
        [[UIColor systemPinkColor] setFill];
    else
        [[UIColor yellowColor] setFill];
    CGContextFillRect(context, bounds);
    
    //circle
    if(count % 2 == 0)
        [[UIColor blackColor] setFill];
    else
        [[UIColor blueColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(x1, y1, 50, 50));
    
    //rectangle
    if(count % 2 == 0)
        [[UIColor purpleColor] setFill];
    else
        [[UIColor greenColor] setFill];
    CGContextFillRect(context, CGRectMake(x2, y2, 50, 50));
    
    //triangle with lines
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 25, 400);
    CGContextAddLineToPoint(context, 200, 200);
    CGContextAddLineToPoint(context, 300, 400);
    CGContextAddLineToPoint(context, 25, 400);
    CGContextStrokePath(context);
    
}

//touches on the screen
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for(UITouch *t in touches){
        CGPoint p = [t locationInView:self];
        x1 = p.x;
        y1 = p.y;
        x2 = p.x;
        y2 = p.y;
        [self setNeedsDisplay];
        count++;
    }
}

//animate shapes
-(void)animation{
    if(count % 2 == 0){
        y1 += 4;
        y2 -= 4;
    }
    else{
        x1 -= 4;
        x2 += 4;
    }
    [self setNeedsDisplay];
}

@end
