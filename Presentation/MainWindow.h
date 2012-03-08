//
//  MainWindow.h
//  Presentation
//
//  Created by Иван Зырянов on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface MainWindow : NSWindow

@property (nonatomic, assign) IBOutlet NSBox* box;

@property (nonatomic, retain) IBOutlet NSView* mainView;
@property (nonatomic, assign) IBOutlet NSImageView *trapezium;

- (void)showMainView;

@end
