//
//  BTINativeNavigationBar.m
//  Tickts
//
//  Created by Luís Portela Afonso on 16/10/14.
//  Copyright (c) 2014 Baaam. All rights reserved.
//

#import "BTINativeNavigationBar.h"

#import "UIFont+Tickts.h"

@interface BTINativeNavigationBar ()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UIButton *backButton;

@property(nonatomic, strong) NSMutableArray *itemsStack;

//  Setup methods
- (void)setupBackButton;
- (void)setupTitleLabel;

//  Layout Methods
- (void)setTitle:(NSString *)title animated:(BOOL)animated;
- (void)showBackButtonAnimated:(BOOL)animated;
- (void)hideBackButtonAnimated:(BOOL)animated;

//  Action Methods
- (void)popTopItem;

@end

@implementation BTINativeNavigationBar

@synthesize topItem = _topItem;

- (instancetype)init {
	if (self = [super init]) {
		_itemsStack = [NSMutableArray array];
	}
	return self;
}

- (UINavigationItem *)topItem {
	return [self.itemsStack lastObject];
}

- (UINavigationItem *)backItem {
	return self.itemsStack[self.itemsStack.count - 1];
}

- (void)pushNavigationItem:(UINavigationItem *)item animated:(BOOL)animated {
	if ([self.itemsStack count] == 1) {
		[self showBackButtonAnimated:animated];
	}

	[self.itemsStack addObject:item];

	[self setTitle:self.topItem.title animated:animated];
}

- (UINavigationItem *)popNavigationItemAnimated:(BOOL)animated {
    if ([self.itemsStack count] == 2) {
        [self hideBackButtonAnimated:animated];
    }
    
    UINavigationItem *itemToPop = [self.itemsStack lastObject];
    [self.itemsStack removeLastObject];
    return itemToPop;
}

- (void)setItems:(NSArray *)items animated:(BOOL)animated {
	_itemsStack = [items mutableCopy];

	[self setupBackButton];
	[self setupTitleLabel];
}

- (CGSize)sizeThatFits:(CGSize)size {
	return CGSizeMake(self.frame.size.width, 75.0f);
}

- (void)layoutSubviews {
}

#pragma mark - Getter Methods

- (NSArray *)items {
	return [self.itemsStack copy];
}

- (UILabel *)titleLabel {
	if (!_titleLabel) {
		UILabel *titleLabel = [UILabel new];
		titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
		titleLabel.numberOfLines = 1;
		titleLabel.textAlignment = NSTextAlignmentCenter;
		titleLabel.textColor = [UINavigationBar appearance].titleTextAttributes[NSForegroundColorAttributeName];
		titleLabel.font = [UIFont fontForNavigationBarTitleText];

		[self addSubview:titleLabel];
		_titleLabel = titleLabel;
	}
	return _titleLabel;
}

#pragma mark - Private Methods

- (void)setTitle:(NSString *)title animated:(BOOL)animated {
	self.titleLabel.text = title;
	[self setNeedsUpdateConstraints];
}

- (void)showBackButtonAnimated:(BOOL)animated {
	self.backButton.hidden = NO;
}

- (void)hideBackButtonAnimated:(BOOL)animated {
    self.backButton.hidden = YES;
}

- (void)setupTitleLabel {
	NSMutableArray *constraints = [NSMutableArray array];
	NSDictionary *views = @{ @"titleLabel": self.titleLabel };

	[constraints addObject:[NSLayoutConstraint constraintWithItem:self.titleLabel
														attribute:NSLayoutAttributeCenterX
														relatedBy:NSLayoutRelationEqual
														   toItem:self
														attribute:NSLayoutAttributeCenterX
													   multiplier:1.0f
														 constant:0.0f]];

	[constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[titleLabel]-|"
																			 options:(NSLayoutFormatAlignAllTop |
																					  NSLayoutFormatAlignAllBottom)
																			 metrics:nil
																			   views:views]];

	[self addConstraints:constraints];
}

- (void)setupBackButton {
	self.backButton = [UIButton buttonWithType:UIButtonTypeCustom];
	self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
	self.backButton.hidden = YES;

	[self.backButton addTarget:self action:@selector(popTopItem) forControlEvents:UIControlEventTouchUpInside];

	UIImage *backImage = [UINavigationBar appearance].backIndicatorImage;
	[self.backButton setImage:backImage forState:UIControlStateNormal];
	NSLog(@"BackImage size: %@", NSStringFromCGSize(backImage.size));

	[self addSubview:self.backButton];

	NSMutableArray *constraints = [NSMutableArray array];
	NSDictionary *views = @{ @"backButton": self.backButton };
	NSDictionary *metrics = @{ @"width": @(backImage.size.width / 2.0f), @"height": @(backImage.size.height / 2.0f) };
	[constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(15.0)-[backButton(width)]"
																			 options:NSLayoutFormatAlignAllLeft
																			 metrics:metrics
																			   views:views]];
	[constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[backButton(height)]"
																			 options:0
																			 metrics:metrics
																			   views:views]];
	[constraints addObject:[NSLayoutConstraint constraintWithItem:self.backButton
														attribute:NSLayoutAttributeCenterY
														relatedBy:NSLayoutRelationEqual
														   toItem:self
														attribute:NSLayoutAttributeCenterY
													   multiplier:1.0f
														 constant:0.0f]];
	[self addConstraints:constraints];
}

- (void)popTopItem {
	[self.delegate navigationBar:self didPopItem:self.topItem];
}

#pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
	  willShowViewController:(UIViewController *)viewController
					animated:(BOOL)animated {
	[self setTitle:viewController.navigationItem.title animated:animated];
}

@end
