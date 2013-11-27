//
//  AMDraggableBlurView.m
//  AMDraggableBlurView
//
//  Created by Andrea on 26/11/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "AMDraggableBlurView.h"
#import <QuartzCore/QuartzCore.h>

@interface AMDraggableBlurView ()

@property (nonatomic, strong) UIToolbar *toolbar;
@property (nonatomic, strong) UIPanGestureRecognizer* panGesture;

@end

@implementation AMDraggableBlurView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)handlePan:(UIPanGestureRecognizer*)sender
{
	[self adjustAnchorPointForGestureRecognizer:sender];
	
	CGPoint translation = [sender translationInView:[self superview]];
	[self setCenter:CGPointMake([self center].x + translation.x, [self center].y + translation.y)];
	
	[sender setTranslation:(CGPoint){0, 0} inView:[self superview]];
}

- (void)adjustAnchorPointForGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        UIView *piece = self;
        CGPoint locationInView = [gestureRecognizer locationInView:piece];
        CGPoint locationInSuperview = [gestureRecognizer locationInView:piece.superview];
        
        piece.layer.anchorPoint = CGPointMake(locationInView.x / piece.bounds.size.width, locationInView.y / piece.bounds.size.height);
        piece.center = locationInSuperview;
    }
}

- (void)setDraggable:(BOOL)draggable
{
	[self.panGesture setEnabled:draggable];
}

- (void)setup
{
	/* Based of César Pinto Castillo's AMBlurView: https://github.com/andreamazz/iOS-blur */
    [self setClipsToBounds:YES];
	[self setBackgroundColor:[UIColor clearColor]];
	[self addGestureRecognizer:self.panGesture];
	[self setUserInteractionEnabled:YES];
}

- (void)setCornerRadius:(BOOL)value
{
	self.layer.cornerRadius = value;
	self.layer.masksToBounds = YES;
}

- (UIToolbar*)toolbar
{
	if (!_toolbar) {
        _toolbar = [[UIToolbar alloc] initWithFrame:[self bounds]];
        [self.layer insertSublayer:[_toolbar layer] atIndex:0];
		[_toolbar setUserInteractionEnabled:YES];
    }
	return _toolbar;
}

- (UIPanGestureRecognizer*)panGesture
{
	if (!_panGesture) {
		_panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
		[_panGesture setMaximumNumberOfTouches:1];
		[_panGesture setMinimumNumberOfTouches:1];
		[_panGesture setCancelsTouchesInView:NO];
	}
	return _panGesture;
}

- (void)setBlurTintColor:(UIColor *)blurTintColor
{
	[self.toolbar setBarTintColor:blurTintColor];
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	[self.toolbar setFrame:[self bounds]];
}

@end
