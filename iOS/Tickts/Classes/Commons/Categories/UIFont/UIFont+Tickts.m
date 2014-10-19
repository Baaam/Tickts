//
//  UIFont+Tickts.m
//  Tickts
//
//  Created by Luís Portela Afonso on 14/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "UIFont+Tickts.h"

#import "UIFont+Baaam.h"

static CGFloat const kUIFontTicktsNavigationBarTitleSize = 17.0f;

@implementation UIFont (Tickts)

+ (UIFont *)fontForNavigationBarTitleText {
	return [UIFont boldFontWithSize:kUIFontTicktsNavigationBarTitleSize];
}

@end
