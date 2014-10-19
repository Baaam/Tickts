//
//  BTISearchViewController.m
//  Tickts
//
//  Created by Luís Portela Afonso on 19/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTISearchViewController.h"

static NSString *const kBTIViewControllerTitle = @"Search";

@interface BTISearchViewController ()

@end

@implementation BTISearchViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.title = kBTIViewControllerTitle;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = kBTIViewControllerTitle;
}

@end
