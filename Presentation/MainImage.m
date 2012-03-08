//
//  MainImage.m
//  Presentation
//
//  Created by Иван Зырянов on 3/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainImage.h"

@implementation NSColor (isRoughlyEqual)

- (BOOL)isRoughlyEqual:(NSColor*)color
{
    return fabs([self greenComponent] - [color greenComponent]) < .001 && fabs([self blueComponent] - [color blueComponent]) < .001 && fabs([self redComponent] - [color redComponent]) < .001;
}

@end

@implementation MainImage
@synthesize imageRep, lastColor;

static NSColor* color1, *color2, *color3, *color4, *color5;
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        imageRep = [[NSBitmapImageRep imageRepWithData:[[NSImage imageNamed:@"sides.png"] TIFFRepresentation]] retain];
        if (!color1)
        {
            color1 = [[NSColor colorWithDeviceRed:0 green:.627451 blue:.890196 alpha:1] retain];
            color2 = [[NSColor colorWithDeviceRed:1 green:.984314 blue:0 alpha:1] retain];
            color3 = [[NSColor colorWithDeviceRed:1 green:0 blue:.533333 alpha:1] retain];
            color4 = [[NSColor colorWithDeviceRed:.054902 green:1 blue:.0392157 alpha:1] retain];
            color5 = [[NSColor colorWithDeviceRed:1 green:.466667 blue:0 alpha:1] retain];
        }
    }
    return self;
}

- (void)dealloc
{
    self.imageRep = 0;
    self.lastColor = 0;
    [super dealloc];
}

- (void)mouseMoved:(NSEvent *)theEvent
{
    //253, 76 - 170 161
    NSPoint mouseLocation = [self convertPoint:[[self window] convertScreenToBase:[NSEvent mouseLocation]] fromView:nil];
    NSColor* color = [imageRep colorAtX:mouseLocation.x y:mouseLocation.y];
    if (![lastColor isEqual:color])
    {
        self.lastColor = color;
        if ([color isRoughlyEqual:color1])
            [self setImage:[NSImage imageNamed:@"main1.png"]];
        else if ([color isRoughlyEqual:color2])
            [self setImage:[NSImage imageNamed:@"main2.png"]];
        else if ([color isRoughlyEqual:color3])
            [self setImage:[NSImage imageNamed:@"main3.png"]];
        else if ([color isRoughlyEqual:color4])
            [self setImage:[NSImage imageNamed:@"main4.png"]];
        else if ([color isRoughlyEqual:color5])
            [self setImage:[NSImage imageNamed:@"main5.png"]];
        else
            [self setImage:[NSImage imageNamed:@"main.png"]];
    }
}

- (void)updateTrackingAreas
{
    for (NSTrackingArea *area in [self trackingAreas])
        [self removeTrackingArea:area];
    [self addTrackingArea:[[[NSTrackingArea alloc] initWithRect:self.bounds options:NSTrackingMouseMoved | NSTrackingActiveAlways | NSTrackingInVisibleRect owner:self userInfo:0] autorelease]];
}

@end
