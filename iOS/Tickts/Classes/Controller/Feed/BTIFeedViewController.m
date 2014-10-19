//
//  BTIFeedViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 19/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIFeedViewController.h"

static NSString *const kBTIViewControllerTitle = @"Feed";

@interface BTIFeedViewController ()

@end

@implementation BTIFeedViewController

- (void)awakeFromNib {
	[super awakeFromNib];

	self.title = kBTIViewControllerTitle;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = kBTIViewControllerTitle;
}

@end
