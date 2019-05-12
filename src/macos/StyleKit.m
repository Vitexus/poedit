/*
 *  This file is part of Poedit (https://poedit.net)
 *
 *  Copyright (C) 2016-2019 Vaclav Slavik
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a
 *  copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 *  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 *  DEALINGS IN THE SOFTWARE.
 *
 *  Generated by PaintCode (www.paintcodeapp.com)
 *
 */

#import "StyleKit.h"


@implementation StyleKit

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawSwitchButtonWithFrame: (NSRect)frame onColor: (NSColor*)onColor labelOffColor: (NSColor*)labelOffColor label: (NSString*)label togglePosition: (CGFloat)togglePosition
{
    //// General Declarations
    CGContextRef context = NSGraphicsContext.currentContext.CGContext;

    //// Color Declarations
    NSColor* offColor = [NSColor colorWithCalibratedRed: 0.682 green: 0.682 blue: 0.682 alpha: 1];

    //// Shadow Declarations
    NSShadow* shadow = [[NSShadow alloc] init];
    [shadow setShadowColor: [NSColor.blackColor colorWithAlphaComponent: 0.2]];
    [shadow setShadowOffset: NSMakeSize(0.1, -2.1)];
    [shadow setShadowBlurRadius: 2];

    //// Variable Declarations
    BOOL toggled = togglePosition > 0;
    NSColor* backgroundColor = toggled ? onColor : offColor;
    NSColor* labelColor = toggled ? onColor : labelOffColor;
    CGFloat toggleHorizOffset = -12 * (1 - togglePosition);


    //// Subframes
    NSRect toggle = NSMakeRect(NSMinX(frame) + NSWidth(frame) - 27, NSMinY(frame) + floor((NSHeight(frame) - 14) * 0.50000 + 0.5), 26, 14);


    //// Toggle
    {
        [NSGraphicsContext saveGraphicsState];
        CGContextBeginTransparencyLayer(context, NULL);

        //// Clip BackgroundCopy
        NSBezierPath* backgroundCopyPath = [NSBezierPath bezierPath];
        [backgroundCopyPath moveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 7.71, NSMinY(toggle)) controlPoint1: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 3.13) controlPoint2: NSMakePoint(NSMinX(toggle) + 3.17, NSMinY(toggle))];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 18.29, NSMinY(toggle))];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 7) controlPoint1: NSMakePoint(NSMinX(toggle) + 22.82, NSMinY(toggle)) controlPoint2: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 3.13)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 7)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 18.29, NSMinY(toggle) + 14) controlPoint1: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 10.87) controlPoint2: NSMakePoint(NSMinX(toggle) + 22.83, NSMinY(toggle) + 14)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 7.71, NSMinY(toggle) + 14)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7) controlPoint1: NSMakePoint(NSMinX(toggle) + 3.18, NSMinY(toggle) + 14) controlPoint2: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 10.87)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7)];
        [backgroundCopyPath closePath];
        [backgroundCopyPath setWindingRule: NSEvenOddWindingRule];
        [backgroundCopyPath addClip];


        //// Background Drawing
        NSBezierPath* backgroundPath = [NSBezierPath bezierPath];
        [backgroundPath moveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 7.71, NSMinY(toggle)) controlPoint1: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 3.13) controlPoint2: NSMakePoint(NSMinX(toggle) + 3.17, NSMinY(toggle))];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 18.29, NSMinY(toggle))];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 7) controlPoint1: NSMakePoint(NSMinX(toggle) + 22.82, NSMinY(toggle)) controlPoint2: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 3.13)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 7)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 18.29, NSMinY(toggle) + 14) controlPoint1: NSMakePoint(NSMinX(toggle) + 26, NSMinY(toggle) + 10.87) controlPoint2: NSMakePoint(NSMinX(toggle) + 22.83, NSMinY(toggle) + 14)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 7.71, NSMinY(toggle) + 14)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7) controlPoint1: NSMakePoint(NSMinX(toggle) + 3.18, NSMinY(toggle) + 14) controlPoint2: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 10.87)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 7)];
        [backgroundPath closePath];
        [backgroundPath setWindingRule: NSEvenOddWindingRule];
        [backgroundColor setFill];
        [backgroundPath fill];


        //// Button Drawing
        [NSGraphicsContext saveGraphicsState];
        CGContextTranslateCTM(context, NSMinX(toggle) + 13, NSMinY(toggle) + 1);

        NSBezierPath* buttonPath = [NSBezierPath bezierPathWithOvalInRect: NSMakeRect(toggleHorizOffset, 0, 12, 12)];
        [NSGraphicsContext saveGraphicsState];
        [shadow set];
        [NSColor.whiteColor setFill];
        [buttonPath fill];
        [NSGraphicsContext restoreGraphicsState];


        [NSGraphicsContext restoreGraphicsState];


        CGContextEndTransparencyLayer(context);
        [NSGraphicsContext restoreGraphicsState];
    }


    //// Text Drawing
    NSRect textRect = NSMakeRect(NSMinX(frame), NSMinY(frame) + floor((NSHeight(frame) - 8) * 0.50000 + 0.5), NSWidth(frame) - 32, 8);
    NSMutableParagraphStyle* textStyle = [NSMutableParagraphStyle new];
    textStyle.alignment = NSRightTextAlignment;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [NSFont boldSystemFontOfSize: NSFont.smallSystemFontSize], NSForegroundColorAttributeName: labelColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = NSHeight([label boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes]);
    NSRect textTextRect = NSMakeRect(NSMinX(textRect), NSMinY(textRect) + (NSHeight(textRect) - textTextHeight) / 2, NSWidth(textRect), textTextHeight);
    [NSGraphicsContext saveGraphicsState];
    NSRectClip(textRect);
    [label drawInRect: NSOffsetRect(textTextRect, 0, 0) withAttributes: textFontAttributes];
    [NSGraphicsContext restoreGraphicsState];
}

+ (void)drawTranslucentButtonWithFrame: (NSRect)frame label: (NSString*)label pressed: (BOOL)pressed
{
    //// General Declarations
    CGContextRef context = NSGraphicsContext.currentContext.CGContext;

    //// Color Declarations
    NSColor* white = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 1];
    NSColor* pressedTranslucent = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.157];
    NSColor* strokeColor = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.118];
    NSColor* strokeColor2 = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.071];

    //// Shadow Declarations
    NSShadow* translucentButtonShadow = [[NSShadow alloc] init];
    [translucentButtonShadow setShadowColor: [NSColor.blackColor colorWithAlphaComponent: 0.25]];
    [translucentButtonShadow setShadowOffset: NSMakeSize(0.1, -0.6)];
    [translucentButtonShadow setShadowBlurRadius: 1];

    //// Variable Declarations
    NSColor* translucentButtonColor = pressed ? pressedTranslucent : white;


    //// Subframes
    NSRect group2 = NSMakeRect(NSMinX(frame) + 0.75, NSMinY(frame) + 1.75, NSWidth(frame) - 1.5, NSHeight(frame) - 3.5);


    //// Group 2
    {
        //// Group 3
        {
            [NSGraphicsContext saveGraphicsState];
            CGContextSetAlpha(context, 0.7);
            CGContextBeginTransparencyLayer(context, NULL);


            //// Rectangle Drawing
            NSBezierPath* rectanglePath = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
            [NSGraphicsContext saveGraphicsState];
            [translucentButtonShadow set];
            [translucentButtonColor setFill];
            [rectanglePath fill];
            [NSGraphicsContext restoreGraphicsState];



            //// Rectangle 2 Drawing
            NSBezierPath* rectangle2Path = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
            [strokeColor setStroke];
            [rectangle2Path setLineWidth: 0.5];
            [rectangle2Path stroke];


            CGContextEndTransparencyLayer(context);
            [NSGraphicsContext restoreGraphicsState];
        }


        //// Rectangle 3 Drawing
        NSBezierPath* rectangle3Path = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
        [strokeColor2 setStroke];
        [rectangle3Path setLineWidth: 0.5];
        [rectangle3Path stroke];
    }


    //// Text Drawing
    NSRect textRect = NSMakeRect(NSMinX(frame) + 14, NSMinY(frame) + floor((NSHeight(frame) - 12) * 0.50000 + 0.5), NSWidth(frame) - 27, 12);
    NSMutableParagraphStyle* textStyle = [NSMutableParagraphStyle new];
    textStyle.alignment = NSLeftTextAlignment;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [NSFont systemFontOfSize: NSFont.smallSystemFontSize], NSForegroundColorAttributeName: NSColor.blackColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = NSHeight([label boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes]);
    NSRect textTextRect = NSMakeRect(NSMinX(textRect), NSMinY(textRect) + (NSHeight(textRect) - textTextHeight) / 2, NSWidth(textRect), textTextHeight);
    [NSGraphicsContext saveGraphicsState];
    NSRectClip(textRect);
    [label drawInRect: NSOffsetRect(textTextRect, 0, 0) withAttributes: textFontAttributes];
    [NSGraphicsContext restoreGraphicsState];
}

@end
