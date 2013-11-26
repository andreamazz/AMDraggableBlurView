//
//  AMDraggableBlurView.h
//  AMDraggableBlurView
//
//  Created by Andrea on 26/11/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMDraggableBlurView : UIView

/**-----------------------------------------------------------------------------
 * @name AMDraggableBlurView Properties
 * -----------------------------------------------------------------------------
 */

/** Sets the tintColor of the view.
 *
 * @param blurTintColor The tint color of the blurred view. Set to nil to reset.
 */
@property (nonatomic, strong) UIColor *blurTintColor;

/**-----------------------------------------------------------------------------
 * @name AMDraggableBlurView Methods
 * -----------------------------------------------------------------------------
 */
/** Sets the view as draggable
 *
 * @param draggable The boolean that enables or disables the draggable state
 */
- (void)setDraggable:(BOOL)draggable;

/** Sets the corner radius
 *
 * @param value The corner radius
 */
- (void)setCornerRadius:(BOOL)value;

@end
