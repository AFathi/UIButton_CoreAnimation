//
//  ViewController.m
//  CA UIButton
//
//  Created by Ahmed Fathi on 11/30/13.
//  Copyright (c) 2013 Ahmed Fathi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // pbt is the IBOutlet of the button
    // Added pbt layer to the animation
    // These numbers (1.2, 1.2, 1) is the changing of the button size that will make the pulse animation
    pbt.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1);
	CABasicAnimation *pulsy = [CABasicAnimation animationWithKeyPath:@"transform"];
	pulsy.toValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
	pulsy.autoreverses = YES;
    //This is the speed of the animation
	pulsy.duration = 0.45;
	pulsy.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	// This makes the button repeat the animation without any end
    pulsy.repeatCount = HUGE_VAL;
	[pbt.layer addAnimation:pulsy forKey:@"pulseAnimation"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)pba {
    //When the button is clicked change the text in the label to The animated button was clicked
    lbl.text = @"The animated button was clicked";
    
    //When the button is clicked this text "The button was clicked" will appear in the debug area
    NSLog(@"The button was clicked");
}
@end
