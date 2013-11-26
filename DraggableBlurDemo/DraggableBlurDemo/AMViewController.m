//
//  AMViewController.m
//  DraggableBlurDemo
//
//  Created by Andrea on 26/11/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "AMViewController.h"
#import "AMDraggableBlurView.h"

@interface AMViewController ()

@property (weak, nonatomic) IBOutlet AMDraggableBlurView *viewDraggable;

@end

@implementation AMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Enable the draggable state
	[self.viewDraggable setDraggable:YES];
	[self.viewDraggable setCornerRadius:10];
}

@end
