//
//  PRPhotoView.m
//  Presentation
//
//  Created by Иван Зырянов on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PRPhotoView.h"

@implementation PRPhotoView
@synthesize imageView, index;

- (IBAction)upPressed:(id)sender
{
    if (index > 0)
    {
        index--;
        imageView.image = [NSImage imageNamed:[NSString stringWithFormat:@"photo%d", index]];
    }
}

- (IBAction)downPressed:(id)sender
{
    if (index < 4)
    {
        index++;
        imageView.image = [NSImage imageNamed:[NSString stringWithFormat:@"photo%d", index]];
    }    
}

@end
