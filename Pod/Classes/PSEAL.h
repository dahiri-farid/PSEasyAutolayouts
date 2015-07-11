//
//  EasyAutoLayouts.h
//  EasyAutolayouts
//
//  Created by Dahiri Farid on 7/7/15.
//  Copyright (c) 2015 Dahiri Farid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

void EAL_CENTER_Y(UIView* aChildView, UIView* aParentView);
void EAL_CENTER_X(UIView* aChildView, UIView* aParentView);
void EAL_CENTER(UIView* aChildView, UIView* aParentView);

void EAL_FULL_WIDTH(UIView* aChildView, UIView* aParentView);
void EAL_FULL_HEIGHT(UIView* aChildView, UIView* aParentView);
void EAL_FULL_SIZE(UIView* aChildView, UIView* aParentView);

void EAL_LEADING_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView);
void EAL_TRAILING_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView);
void EAL_TOP_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView);
void EAL_BOTTOM_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView);

void EAL_WIDTH(CGFloat aWidth, UIView* aView);
void EAL_HEIGHT(CGFloat aHeight, UIView* aView);

@interface PSEAL : NSObject

+ (void)centerVerticallyView:(UIView *)aView toParentView:(UIView *)aParentView;
+ (void)centerHorizontallyView:(UIView *)aView toParentView:(UIView *)aParentView;
+ (void)centerView:(UIView *)aView toParentView:(UIView *)aParentView;

+ (void)fullWidthView:(UIView *)aView toParentView:(UIView *)aParentView;
+ (void)fullHeightView:(UIView *)aView toParentView:(UIView *)aParentView;
+ (void)fullSizeView:(UIView *)aView toParentView:(UIView *)aParentView;

+ (void)leadingSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)toView;
+ (void)trailingSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView;
+ (void)topSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView;
+ (void)bottomSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView;

+ (void)width:(CGFloat)aWidth view:(UIView *)aView;
+ (void)height:(CGFloat)aHeight view:(UIView *)aView;

@end
