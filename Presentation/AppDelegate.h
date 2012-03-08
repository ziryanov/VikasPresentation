//
//  AppDelegate.h
//  Presentation
//
//  Created by Иван Зырянов on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindow;
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet MainWindow *window;

@property (nonatomic, retain) IBOutlet NSView* list1;
@property (nonatomic, retain) IBOutlet NSView* list2;
@property (nonatomic, retain) IBOutlet NSView* list3;
@property (nonatomic, retain) IBOutlet NSView* list4;
@property (nonatomic, retain) IBOutlet NSView* list5;
@property (nonatomic, retain) IBOutlet NSView* list6;
@property (nonatomic, retain) IBOutlet NSView* list7;

@property (nonatomic, retain) IBOutlet NSView* link2_1;
@property (nonatomic, retain) IBOutlet NSView* link3_1;
@property (nonatomic, retain) IBOutlet NSView* link4_1;
@property (nonatomic, retain) IBOutlet NSView* link4_2;
@property (nonatomic, retain) IBOutlet NSView* link4_3;
@property (nonatomic, retain) IBOutlet NSView* link5_1;
@property (nonatomic, retain) IBOutlet NSView* link6_1;
@property (nonatomic, retain) IBOutlet NSView* link7_1;

- (IBAction)showMainView:(id)sender;
- (IBAction)showList1:(id)sender;
- (IBAction)showList2:(id)sender;
- (IBAction)showList3:(id)sender;
- (IBAction)showList4:(id)sender;
- (IBAction)showList5:(id)sender;
- (IBAction)showList6:(id)sender;
- (IBAction)showList7:(id)sender;

- (IBAction)showLink2_1:(id)sender;
- (IBAction)showLink3_1:(id)sender;
- (IBAction)showLink4_1:(id)sender;
- (IBAction)showLink4_2:(id)sender;
- (IBAction)showLink4_3:(id)sender;
- (IBAction)showLink5_1:(id)sender;
- (IBAction)showLink6_1:(id)sender;
- (IBAction)showLink7_1:(id)sender;

@end
