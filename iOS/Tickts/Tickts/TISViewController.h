//
//  TISViewController.h
//  Tickts
//
//  Created by Luís Portela Afonso on 10/07/14.
//  Copyright (c) 2014 meligaletiko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSButton;

@interface TISViewController : UIViewController

@property (weak, nonatomic) IBOutlet LSButton *loginButton;
@property (weak, nonatomic) IBOutlet LSButton *registerButton;
@property (weak, nonatomic) IBOutlet LSButton *connectButton;

@end
