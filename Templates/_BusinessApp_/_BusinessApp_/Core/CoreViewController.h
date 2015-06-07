//
//  CoreViewController.h
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 1/14/14.
//  Copyright (c) 2015 Gytenis Mikulėnas
//  https://github.com/GitTennis/SuccessFramework
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConstStrings.h"

@interface CoreViewController : UIViewController

// Xib loading
- (UIView *)loadViewFromXibOfClass:(Class)class;
- (UIView *)loadViewFromXib:(NSString *)name ofClass:(Class)class;

// Navigation
- (void)showNavigationBar;
- (void)hideNavigationBar;
- (BOOL)hasNavigationBar;
- (void)didPressedBack;

// Popup showing, hiding
/*- (void)showPartialViewController:(CoreViewController *)childViewController insideContainerView:(UIView *)containerView;
- (void)hidePartialViewControllerFromContainerView:(UIView *)containerView;
- (CGFloat)popupFadeDuration;*/

// Screen activity indicators
- (void)showScreenActivityIndicator;
- (void)hideScreenActivityIndicator;

// Protected methods
- (void)commonInit;
- (void)prepareUI;
- (void)renderUI;
- (void)loadModel;

// Error handling
- (void)handleNetworkRequestError:(NSNotification *)notification;
- (void)handleNetworkRequestSuccess:(NSNotification *)notification;

// Language changed
- (void)notificationLocalizationHasChanged;

@end
