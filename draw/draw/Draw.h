//
//  Draw.h
//  draw
//
//  Created by Derrick Ryan on 3/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Draw : UIView
@property (nonatomic) float x1, y1;
@property (nonatomic) float x2, y2;
@property (nonatomic) int count;
-(void)animation;
@end

NS_ASSUME_NONNULL_END
