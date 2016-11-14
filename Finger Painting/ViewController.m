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
@property (nonatomic) UIColor *currentColor;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.drawingView.lines = [[NSMutableArray alloc]init];
    self.drawingView.color = [[NSMutableArray alloc]init];
    self.currentColor = [UIColor blackColor];
    
}
- (IBAction)yellowButton:(id)sender {
    self.currentColor = [UIColor yellowColor];
}
- (IBAction)redButton:(id)sender {
    self.currentColor = [UIColor redColor];
}
- (IBAction)blueButton:(id)sender {
    self.currentColor = [UIColor blueColor];
}
- (IBAction)greenButton:(id)sender {
    self.currentColor = [UIColor greenColor];
}
- (IBAction)purpleButton:(id)sender {
    self.currentColor = [UIColor purpleColor];
}
- (IBAction)cyanButton:(id)sender {
    self.currentColor = [UIColor cyanColor];
}
- (IBAction)orangeButton:(id)sender {
    self.currentColor = [UIColor orangeColor];
}
- (IBAction)blackButton:(id)sender {
    self.currentColor = [UIColor blackColor];
}
- (IBAction)magentaButton:(id)sender {
    self.currentColor = [UIColor magentaColor];
}

- (IBAction)panGesture:(UIPanGestureRecognizer *)pan {
   
    CGPoint currentPoint = [pan locationInView:self.view];
    
    if (pan.state == UIGestureRecognizerStateBegan){
        self.draw = [[UIBezierPath alloc]init];
        [self.draw moveToPoint:currentPoint];
        [self.drawingView.color addObject:self.currentColor];
        [self.drawingView.lines addObject:self.draw];
    }
    else  {
        [self.draw addLineToPoint:currentPoint];
        
    }
    [self.drawingView setNeedsDisplay];
}








@end
