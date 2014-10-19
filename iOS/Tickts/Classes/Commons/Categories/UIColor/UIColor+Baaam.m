//
//  UIColor+Baaam.m
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import "UIColor+Baaam.h"

@implementation UIColor (Baaam)

+ (UIColor *)colorWithHex:(unsigned int)hexValue alpha:(CGFloat)alpha {
	return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
						   green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
							blue:((float)(hexValue & 0xFF)) / 255.0
						   alpha:alpha];
}

+ (UIColor *)colorWithHex:(unsigned int)hexValue {
	return [self colorWithHex:hexValue alpha:(((float)(hexValue & 0xFF000000)) / 255.0)];
}

+ (UIColor *)colorWithHexString:(NSString *)hexValueAsString {
	NSMutableString *cleanedHexValue = [[NSMutableString alloc] initWithString:hexValueAsString];

	[cleanedHexValue replaceOccurrencesOfString:@"#" withString:@"" options:0 range:NSMakeRange(0, 1)];
	if (cleanedHexValue.length == 6) {
		[cleanedHexValue insertString:@"ff" atIndex:0];
	}

	unsigned int hexValue;
	[[NSScanner scannerWithString:cleanedHexValue] scanHexInt:&hexValue];

	return [self colorWithHex:hexValue];
}

@end
