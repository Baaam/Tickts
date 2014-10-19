//
//  UIFont+Baaam.h
//  Tickts
//
//  Created by Luís Portela Afonso on 14/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (Baaam)

/**
 *  Returns an instance of UIFont with a custom regular font
 *
 *  @param size The size of the font
 *
 *  @return returns an UIFont instance with the provided size
 */
+ (UIFont *)regularFontWithSize:(CGFloat)size;

/**
 *  Returns an instance of UIFont with a custom bold font
 *
 *  @param size The size of the font
 *
 *  @return returns an UIFont instance with the provided size
 */
+ (UIFont *)boldFontWithSize:(CGFloat)size;

@end
