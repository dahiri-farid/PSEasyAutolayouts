//
//  PSEAL.h
//  EasyAutolayouts
//
//  Created by Dahiri Farid on 7/7/15.
//  Copyright (c) 2015 Dahiri Farid. All rights reserved.
//

#import "PSEAL.h"

void EAL_CENTER_Y(UIView* aChildView, UIView* aParentView)
{
    [PSEAL centerVerticallyView:aChildView toParentView:aParentView];
}

void EAL_CENTER_X(UIView* aChildView, UIView* aParentView)
{
    [PSEAL centerHorizontallyView:aChildView toParentView:aParentView];
}

void EAL_CENTER(UIView* aChildView, UIView* aParentView)
{
    [PSEAL centerView:aChildView toParentView:aParentView];
}

void EAL_FULL_WIDTH(UIView* aChildView, UIView* aParentView)
{
    [PSEAL fullWidthView:aChildView toParentView:aParentView];
}

void EAL_FULL_HEIGHT(UIView* aChildView, UIView* aParentView)
{
    [PSEAL fullHeightView:aChildView toParentView:aParentView];
}

void EAL_FULL_SIZE(UIView* aChildView, UIView* aParentView)
{
    [PSEAL fullSizeView:aChildView toParentView:aParentView];
}

void EAL_LEADING_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView)
{
    [PSEAL leadingSpace:aSpace view:aChildView toView:aParentView];
}

void EAL_TRAILING_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView)
{
    [PSEAL trailingSpace:aSpace view:aChildView toView:aParentView];
}

void EAL_TOP_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView)
{
    [PSEAL topSpace:aSpace view:aChildView toView:aParentView];
}

void EAL_BOTTOM_SPACE(CGFloat aSpace, UIView* aChildView, UIView* aParentView)
{
    [PSEAL bottomSpace:aSpace view:aChildView toView:aParentView];
}

void EAL_WIDTH(CGFloat aWidth, UIView* aView)
{
    [PSEAL width:aWidth view:aView];
}

void EAL_HEIGHT(CGFloat aHeight, UIView* aView)
{
    [PSEAL height:aHeight view:aView];
}

@implementation PSEAL

+ (void)centerVerticallyView:(UIView *)aView toParentView:(UIView *)aParentView
{
    NSParameterAssert(aView);
    NSParameterAssert(aParentView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aParentView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0];
    [aParentView addConstraint:cn];
}

+ (void)centerHorizontallyView:(UIView *)aView toParentView:(UIView *)aParentView
{
    NSParameterAssert(aView);
    NSParameterAssert(aParentView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aParentView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0];
    [aParentView addConstraint:cn];
}

+ (void)centerView:(UIView *)aView toParentView:(UIView *)aParentView
{
    [[self class] centerHorizontallyView:aView toParentView:aParentView];
    [[self class] centerVerticallyView:aView toParentView:aParentView];
}

+ (void)fullWidthView:(UIView *)aView toParentView:(UIView *)aParentView
{
    NSParameterAssert(aView);
    NSParameterAssert(aParentView);
    
    [[self class] leadingSpace:0.0f view:aView toView:aParentView];
    [[self class] trailingSpace:0.0f view:aView toView:aParentView];
}

+ (void)fullHeightView:(UIView *)aView toParentView:(UIView *)aParentView
{
    NSParameterAssert(aView);
    NSParameterAssert(aParentView);
    
    [[self class] topSpace:0.0f view:aView toView:aParentView];
    [[self class] bottomSpace:0.0f view:aView toView:aParentView];
}

+ (void)fullSizeView:(UIView *)aView toParentView:(UIView *)aParentView
{
    NSParameterAssert(aView);
    NSParameterAssert(aParentView);
    
    [[self class] fullWidthView:aView toParentView:aParentView];
    [[self class] fullHeightView:aView toParentView:aParentView];
}

+ (void)leadingSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView
{
    NSParameterAssert(aView);
    NSParameterAssert(aToView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aToView
                                                          attribute:NSLayoutAttributeLeading
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeLeading
                                                         multiplier:1
                                                           constant:aSpace];
    [aToView addConstraint:cn];
}

+ (void)trailingSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView
{
    NSParameterAssert(aView);
    NSParameterAssert(aToView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aToView
                                                          attribute:NSLayoutAttributeTrailing
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeTrailing
                                                         multiplier:1
                                                           constant:aSpace];
    [aToView addConstraint:cn];
}

+ (void)topSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView
{
    NSParameterAssert(aView);
    NSParameterAssert(aToView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aToView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1
                                                           constant:aSpace];
    [aToView addConstraint:cn];
}

+ (void)bottomSpace:(CGFloat)aSpace view:(UIView *)aView toView:(UIView *)aToView
{
    NSParameterAssert(aView);
    NSParameterAssert(aToView);
    
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aToView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:aView
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1
                                                           constant:aSpace];
    [aToView addConstraint:cn];

}

+ (void)width:(CGFloat)aWidth view:(UIView *)aView
{
    NSParameterAssert(aView);
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:aWidth];
    [aView addConstraint:cn];
}

+ (void)height:(CGFloat)aHeight view:(UIView *)aView
{
    NSParameterAssert(aView);
    NSLayoutConstraint* cn = [NSLayoutConstraint constraintWithItem:aView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:aHeight];
    [aView addConstraint:cn];
}

@end
