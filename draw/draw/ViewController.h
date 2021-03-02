//
//  ViewController.h
//  draw
//
//  Created by Derrick Ryan on 3/1/21.
//

#import <UIKit/UIKit.h>
#import "Draw.h"

@interface ViewController : UIViewController
@property(nonatomic, strong) CADisplayLink *link;
@property(nonatomic, strong) IBOutlet Draw *myDraw;
@end

