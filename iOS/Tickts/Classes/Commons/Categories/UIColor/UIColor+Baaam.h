//
//  UIColor+Baaam.h
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Baaam)

+ (UIColor *)colorWithHex:(unsigned int)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(unsigned int)hexValue;

+ (UIColor *)colorWithHexString:(NSString *)hexValueAsString;

@end
