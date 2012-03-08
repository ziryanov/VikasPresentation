//
//  MainWindow.m
//  Presentation
//
//  Created by Иван Зырянов on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainWindow.h"

@implementation MainWindow
@synthesize box;
@synthesize mainView, trapezium;

- (void)dealloc
{
    self.mainView = 0;
    [super dealloc];
}

- (void)mouseDown:(NSEvent *)theEvent
{
    if ([mainView superview] && NSPointInRect([theEvent locationInWindow], [trapezium frame]))
    {
        [trapezium setHidden:NO];
        
        float animationDuration = .5;
        [NSAnimationContext beginGrouping];
        [[NSAnimationContext currentContext] setDuration:animationDuration];
        
        NSRect frame = [trapezium frame];
        CGFloat width = frame.size.width;
        CGFloat height = frame.size.height;
        frame.origin.x -= width / 2;
        frame.size.width += width;
        frame.origin.y -= height / 2;
        frame.size.height += height;
        [[trapezium animator] setFrame:frame];
        
        [NSTimer scheduledTimerWithTimeInterval:animationDuration target:[NSApp delegate] selector:@selector(showList1:) userInfo:0 repeats:NO];
        [NSAnimationContext endGrouping];
    }
}

- (void)showMainView
{
    [trapezium setFrame:CGRectMake(467, 428, 271, 186)];
    [trapezium setHidden:YES];
    [box setContentView:mainView];
}

@end
