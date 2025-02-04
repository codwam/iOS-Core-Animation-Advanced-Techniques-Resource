//
//  ViewController.m
//
//  Created by Nick Lockwood on 03/02/2013.
//  Copyright (c) 2013 Charcoal Design. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIView *layerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //load an image
    UIImage *image = [UIImage imageNamed:@"Snowman.png"];

    //add it directly to our view's layer
    self.layerView.layer.contents = (__bridge id)image.CGImage;
    
    //center the image
    self.layerView.layer.contentsGravity = kCAGravityCenter;
    
    //set the contentsScale to match screen
    self.layerView.layer.contentsScale = 2;
    
    //clip the snowman to fit his bounds
//    self.layerView.layer.masksToBounds = YES;
}

@end
