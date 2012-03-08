//
//  PRPhotoView.h
//  Presentation
//
//  Created by Иван Зырянов on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PRPhotoView : NSView

@property (nonatomic) NSInteger index;
@property (nonatomic, assign) IBOutlet NSImageView* imageView;

- (IBAction)upPressed:(id)sender;
- (IBAction)downPressed:(id)sender;

@end
