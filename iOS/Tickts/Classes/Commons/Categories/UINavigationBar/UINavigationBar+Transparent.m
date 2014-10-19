//
//  UINavigationBar+Transparent.m
//  Tickts
//
//  Created by Luís Portela Afonso on 13/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "UINavigationBar+Transparent.h"

@implementation UINavigationBar (Transparent)

- (void)transparent {
	[self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
	self.shadowImage = [UIImage new];
	self.translucent = YES;
}

@end
