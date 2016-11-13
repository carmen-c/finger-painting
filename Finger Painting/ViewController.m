//
//  ViewController.m
//  Finger Painting
//
//  Created by carmen cheng on 2016-11-11.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *pan;
@property (weak, nonatomic) IBOutlet DrawingView *drawingView;
@property (nonatomic) UIBezierPath *draw;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.drawingView.lines = [[NSMutableArray alloc]init];
    
}

- (IBAction)panGesture:(UIPanGestureRecognizer *)pan {
   
    CGPoint currentPoint = [pan locationInView:self.view];
    
    if (pan.state == UIGestureRecognizerStateBegan){
        self.draw = [[UIBezierPath alloc]init];
        [self.draw moveToPoint:currentPoint];
        [self.drawingView.lines addObject:self.draw];
    }
    else  {
        [self.draw addLineToPoint:currentPoint];
        
    }
    [self.drawingView setNeedsDisplay];
}








@end
