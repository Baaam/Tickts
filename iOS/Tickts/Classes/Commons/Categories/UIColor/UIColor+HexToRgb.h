//
//  UIColor+HexToRgb.h
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexToRgb)

+ (UIColor *)colorFromHex:(unsigned int)hexValue;
+ (UIColor *)colorFromHexString:(NSString *)hexValueAsString;

@end
