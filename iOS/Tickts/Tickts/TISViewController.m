//
//  TISViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import "TISViewController.h"
#import "UIColor+HexToRgb.h"
#import "LSButton.h"

@interface TISViewController ()

@property (nonatomic, strong) CAGradientLayer *backgroundGradientLayer;

@end

@implementation TISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self.view.layer insertSublayer:self.backgroundGradientLayer atIndex:0];
	
	self.loginButton.backgroundColor = [UIColor colorFromHexString:kTISMainViewGradientEndColor];
	self.loginButton.longShadowOffset = CGPointMake(2000.0f, 4000.0f);
	self.loginButton.gradientColors = [NSArray arrayWithObjects:
										(id)[[UIColor blackColor] colorWithAlphaComponent:0.2].CGColor,
										(id)[[UIColor blackColor] colorWithAlphaComponent:0.1].CGColor,
										nil];
	
	self.loginButton.layer.borderColor = [UIColor whiteColor].CGColor;
	self.loginButton.layer.borderWidth = 2.5f;
	self.loginButton.layer.cornerRadius = 5.0f;
	
	self.registerButton.backgroundColor = [UIColor colorFromHexString:kTISMainViewGradientEndColor];
	self.registerButton.longShadowOffset = CGPointMake(2000.0f, 4000.0f);
	self.registerButton.gradientColors = [NSArray arrayWithObjects:
									   (id)[[UIColor blackColor] colorWithAlphaComponent:0.2].CGColor,
									   (id)[[UIColor blackColor] colorWithAlphaComponent:0.1].CGColor,
									   nil];
	
	self.registerButton.layer.borderColor = [UIColor whiteColor].CGColor;
	self.registerButton.layer.borderWidth = 2.5f;
	self.registerButton.layer.cornerRadius = 5.0f;
	
	self.connectButton.backgroundColor = [UIColor blueColor];
	self.connectButton.longShadowOffset = CGPointMake(150.0f, 200.0f);
	self.connectButton.gradientColors = [NSArray arrayWithObjects:
										  (id)[[UIColor blackColor] colorWithAlphaComponent:0.2].CGColor,
										  (id)[[UIColor blackColor] colorWithAlphaComponent:0.1].CGColor,
										  nil];
	
	self.connectButton.layer.borderColor = [UIColor whiteColor].CGColor;
	self.connectButton.layer.borderWidth = 2.5f;
	self.connectButton.layer.cornerRadius = 5.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Getter Methods

- (CAGradientLayer *)backgroundGradientLayer
{
	if (!_backgroundGradientLayer) {
		_backgroundGradientLayer = [CAGradientLayer layer];
		_backgroundGradientLayer.frame = self.view.frame;
		_backgroundGradientLayer.colors = [NSArray arrayWithObjects:
									 (id)[UIColor colorFromHexString:kTISMainViewGradientStartColor].CGColor,
									 (id)[UIColor colorFromHexString:kTISMainViewGradientEndColor].CGColor,
									 nil];
		
		_backgroundGradientLayer.masksToBounds = YES;
	}
	
	return _backgroundGradientLayer;
}

@end
