//
//  BTITicktsViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 19/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTITicktsViewController.h"

NSString *const kBTIViewControllerTitle = @"Tickets";

@interface BTITicktsViewController ()

@end

@implementation BTITicktsViewController

- (void)awakeFromNib {
	[super awakeFromNib];

	self.title = kBTIViewControllerTitle;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = kBTIViewControllerTitle;
}

@end
