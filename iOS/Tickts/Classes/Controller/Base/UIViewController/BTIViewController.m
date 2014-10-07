//
//  BTIViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 07/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIViewController.h"
#import "UIColor+HexToRgb.h"
#import "BTIColorConstants.h"

@interface BTIViewController ()

@property (nonatomic, strong) CAGradientLayer *backgroundGradientLayer;

@end

@implementation BTIViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self.view.layer insertSublayer:self.backgroundGradientLayer atIndex:0];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (CAGradientLayer *)backgroundGradientLayer
{
	if (!_backgroundGradientLayer) {
		_backgroundGradientLayer = [CAGradientLayer layer];
		_backgroundGradientLayer.frame = self.view.frame;
		_backgroundGradientLayer.colors = @[
											(id)[UIColor colorFromHexString:kBTIMainViewGradientStartColor].CGColor,
											(id)[UIColor colorFromHexString:kBTIMainViewGradientEndColor].CGColor
											];
		
		_backgroundGradientLayer.masksToBounds = YES;
		_backgroundGradientLayer.startPoint = CGPointMake(1.0f, 0.0f);
		_backgroundGradientLayer.endPoint = CGPointMake(0.0f, 1.0f);
	}
	
	return _backgroundGradientLayer;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

@end
