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
        [[UIColor blackColor] setFill];
    else
        [[UIColor blueColor] setFill];
    CGContextFillRect(context, bounds);
    
    //circle
    if(count % 2 == 0)
        [[UIColor redColor] setFill];
    else
        [[UIColor yellowColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(x1, y1, 50, 50));
    
    //rectangle
    if(count % 2 == 0)
        [[UIColor orangeColor] setFill];
    else
        [[UIColor greenColor] setFill];
    CGContextFillRect(context, CGRectMake(x2, y2, 50, 50));
    
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
    if(count % 3 == 0){
        y1 += 3;
        y2 -= 3;
    }
    else{
        x1 -= 3;
        x2 += 3;
    }
    [self setNeedsDisplay];
}

@end
