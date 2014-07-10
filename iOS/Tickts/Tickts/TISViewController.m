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
