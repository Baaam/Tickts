//
//  UIFont+Baaam.m
//  Tickts
//
//  Created by Luís Portela Afonso on 14/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "UIFont+Baaam.h"

//  You should customize this strings to provide the correct fonts to your project
static NSString *const kUIFontBaaamRegularFont = @"Montserrat-Regular";
static NSString *const kUIFontBaaamBoldFont = @"Montserrat-Bold";

@implementation UIFont (Baaam)

+ (UIFont *)regularFontWithSize:(CGFloat)size {
	return [UIFont fontWithName:kUIFontBaaamRegularFont size:size];
}

+ (UIFont *)boldFontWithSize:(CGFloat)size {
	return [UIFont fontWithName:kUIFontBaaamBoldFont size:size];
}

@end
