//
//  ViewController.m
//  draw
//
//  Created by Derrick Ryan on 3/1/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize link;
@synthesize myDraw;

- (void)viewDidLoad {
    [super viewDidLoad];
    link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    [link setPreferredFramesPerSecond:10];
    [link setPaused:NO];
}

//call this function everytime screen needs to refresh
- (void)tick:(CADisplayLink *)sender{
    [myDraw animation];
}


@end
