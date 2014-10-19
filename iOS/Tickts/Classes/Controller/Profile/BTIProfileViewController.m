//
//  BTIProfileViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 19/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIProfileViewController.h"

static NSString *const kBTIViewControllerTitle = @"Profile";

@interface BTIProfileViewController ()

@end

@implementation BTIProfileViewController

- (void)awakeFromNib {
	[super awakeFromNib];

	self.title = kBTIViewControllerTitle;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = kBTIViewControllerTitle;
}

@end
