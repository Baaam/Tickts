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


	self.title = @"Find";
	//	UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
	//																		  target:self
	//																		  action:@selector(cenas)];
	//	self.navigationItem.leftBarButtonItem = item;

	NSLog(@"Top Layout guide: %f", self.topLayoutGuide.length);
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	NSLog(@"Top Layout guide: %f", self.topLayoutGuide.length);
}

- (IBAction)push {
	UIViewController *cenas = [UIViewController new];
	cenas.title = @"Cenas";

	[self.navigationController pushViewController:cenas animated:YES];
}

- (void)cenas {
}

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

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

@end
