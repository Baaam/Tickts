//
//  BTINavigationController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 08/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTINavigationController.h"

#import "BTINavigationBar.h"
#import "BTINativeNavigationBar.h"
#import "UINavigationBar+Transparent.h"

@interface BTINavigationViewController () <UINavigationBarDelegate>

@end

@implementation BTINavigationViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.navigationBar.delegate = self;

	[self setValue:[BTINativeNavigationBar new] forKeyPath:@"navigationBar"];
	self.delegate = (BTINavigationBar *)self.navigationBar;

	self.navigationBarHidden = NO;
	[self.navigationBar transparent];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
	[super pushViewController:viewController animated:animated];
	[self.navigationBar pushNavigationItem:viewController.navigationItem animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    UIViewController *viewControllerToPop = [super popViewControllerAnimated:animated];
    [self.navigationBar popNavigationItemAnimated:animated];
    return viewControllerToPop;
}

#pragma mark - UINavigationBarDelegate Methods

- (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item {
	[self popViewControllerAnimated:YES];
}

#pragma mark - Layout Methods

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

@end
