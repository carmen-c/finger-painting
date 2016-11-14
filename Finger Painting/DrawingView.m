//
//  DrawingView.m
//  Finger Painting
//
//  Created by carmen cheng on 2016-11-11.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView


- (void)drawRect:(CGRect)rect {
    
    for (int i = 0; i < [self.lines count]; i++) {
        [self.color[i] setStroke];
        [self.lines[i] stroke];
    }

}


@end
