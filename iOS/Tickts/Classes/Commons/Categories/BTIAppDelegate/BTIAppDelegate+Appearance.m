//
//  BTIAppDelegate+Appearance.m
//  Tickts
//
//  Created by Luís Portela Afonso on 10/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTIAppDelegate+Appearance.h"

@implementation BTIAppDelegate (Appearance)

- (void)applyAppearance {
	[[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
	[[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"BackButton"]];
}

@end
