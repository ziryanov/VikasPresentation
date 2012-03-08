//
//  AppDelegate.m
//  Presentation
//
//  Created by Иван Зырянов on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindow.h"

@implementation AppDelegate
@synthesize window;
@synthesize list1, list2, list3, list4, list5, list6, list7;
@synthesize link2_1, link3_1, link4_1, link4_2, link4_3, link5_1, link6_1, link7_1;
- (void)dealloc
{
    self.window = 0;
    
    self.list1 = 0;
    self.list2 = 0;
    self.list3 = 0;
    self.list4 = 0;
    self.list5 = 0;
    self.list6 = 0;
    self.list7 = 0;
    
    self.link2_1 = 0;
    self.link3_1 = 0;
    self.link4_1 = 0;
    self.link4_2 = 0;
    self.link4_3 = 0;
    self.link5_1 = 0;
    self.link6_1 = 0;
    self.link7_1 = 0;
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [window setBackgroundColor:[NSColor clearColor]];
    [window setOpaque:NO];
    [window makeKeyAndOrderFront:0];
}

- (IBAction)showMainView:(id)sender
{
    [window showMainView];
}

- (IBAction)showList1:(id)sender
{
    [window.box setContentView:list1];
}

- (IBAction)showList2:(id)sender
{
    [window.box setContentView:list2];
}

- (IBAction)showList3:(id)sender
{
    [window.box setContentView:list3];
}

- (IBAction)showList4:(id)sender
{
    [window.box setContentView:list4];
}

- (IBAction)showList5:(id)sender
{
    [window.box setContentView:list5];
}

- (IBAction)showList6:(id)sender
{
    [window.box setContentView:list6];
}

- (IBAction)showList7:(id)sender
{
    [window.box setContentView:list7];
}


- (IBAction)showLink2_1:(id)sender
{
    [window.box setContentView:link2_1];
}

- (IBAction)showLink3_1:(id)sender
{
    [window.box setContentView:link3_1];
}

- (IBAction)showLink4_1:(id)sender
{
    [window.box setContentView:link4_1];
}

- (IBAction)showLink4_2:(id)sender
{
    [window.box setContentView:link4_2];
}

- (IBAction)showLink4_3:(id)sender
{
    [window.box setContentView:link4_3];
}

- (IBAction)showLink5_1:(id)sender
{
    [window.box setContentView:link5_1];
}

- (IBAction)showLink6_1:(id)sender
{
    [window.box setContentView:link6_1];
}

- (IBAction)showLink7_1:(id)sender
{
    [window.box setContentView:link7_1];
}

@end
