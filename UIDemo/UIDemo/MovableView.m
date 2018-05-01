//
//  MyView.m
//  UIDemo
//
//  Created by Алексей on 27.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "MovableView.h"

@implementation MovableView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch began");
    
    if ([[touches anyObject] tapCount] == 2) {
        locationBounds = [[touches anyObject] locationInView:self];
        self.backgroundColor = UIColor.purpleColor;
        isActive = YES;
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch move");
    
    if (isActive) {
    CGPoint locationFrame = [[touches anyObject] locationInView:self.superview];
    
    self.frame = CGRectMake(locationFrame.x - locationBounds.x, locationFrame.y - locationBounds.y, self.frame.size.width, self.frame.size.height);
    }

}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch ended");
    
    if (isActive) {
        self.backgroundColor = UIColor.redColor;
        isActive = NO;
    }
}

@end
