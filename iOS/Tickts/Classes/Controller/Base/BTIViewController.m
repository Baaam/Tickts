//
//  BTIViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 07/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIViewController.h"

#import "UIColor+BackgroundGradient.h"

@interface BTIViewController ()

@property(nonatomic, strong) CAGradientLayer *backgroundGradientLayer;

@end

@implementation BTIViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.view.layer insertSublayer:self.backgroundGradientLayer atIndex:0];
}

#pragma mark - Getters

- (CAGradientLayer *)backgroundGradientLayer {
	if (!_backgroundGradientLayer) {
		_backgroundGradientLayer = [CAGradientLayer layer];
		_backgroundGradientLayer.frame = self.view.frame;
		_backgroundGradientLayer.colors =
			@[(id)[UIColor backgroundGradientStartColor].CGColor, (id)[UIColor backgroundGradientEndColor].CGColor];

		_backgroundGradientLayer.masksToBounds = YES;
		_backgroundGradientLayer.startPoint = CGPointMake(1.0f, 0.0f);
		_backgroundGradientLayer.endPoint = CGPointMake(0.0f, 1.0f);
	}

	return _backgroundGradientLayer;
}

#pragma mark - Layout Methods

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

@end
