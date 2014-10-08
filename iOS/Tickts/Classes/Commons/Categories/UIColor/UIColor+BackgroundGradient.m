//
//  UIColor+BackgroundGradient.m
//  Tickts
//
//  Created by Luís Portela Afonso on 08/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "UIColor+BackgroundGradient.h"

#import "UIColor+HexToRgb.h"

@implementation UIColor (BackgroundGradient)

+ (UIColor *)backgroundGradientStartColor {
	return [UIColor colorWithHex:0x534D7E alpha:1.0f];
}

+ (UIColor *)backgroundGradientEndColor {
	return [UIColor colorWithHex:0x6976A9 alpha:1.0f];
}

@end
