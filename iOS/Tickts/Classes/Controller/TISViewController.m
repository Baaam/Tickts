//
//  TISViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import "TISViewController.h"
#import "UIColor+HexToRgb.h"

@interface TISViewController ()

@property (nonatomic, strong) CAGradientLayer *backgroundGradientLayer;

@end

@implementation TISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self.view.layer insertSublayer:self.backgroundGradientLayer atIndex:0];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	NSLog(@"Status bar: %f", [UIApplication sharedApplication].statusBarFrame.size.height);
	NSLog(@"My height: %f", self.view.frame.size.height);
	NSLog(@"My width: %f", self.view.frame.size.width);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Getter Methods



@end
