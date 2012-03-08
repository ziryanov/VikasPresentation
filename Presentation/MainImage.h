//
//  MainImage.h
//  Presentation
//
//  Created by Иван Зырянов on 3/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainImage : NSImageView

@property (nonatomic, retain) NSColor* lastColor;
@property (nonatomic, retain) NSBitmapImageRep *imageRep;

@end
