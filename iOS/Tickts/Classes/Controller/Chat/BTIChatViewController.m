//
//  BTIChatViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 19/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIChatViewController.h"

static NSString *const kBTIViewControllerTitle = @"Chat";

@interface BTIChatViewController ()

@end

@implementation BTIChatViewController

- (void)awakeFromNib {
	[super awakeFromNib];

	self.title = kBTIViewControllerTitle;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = kBTIViewControllerTitle;
}

@end
