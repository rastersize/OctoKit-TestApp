//
//  CDAppDelegate.h
//  OctoKit-Test
//
//  Created by Aron Cedercrantz on 03-06-2013.
//  Copyright (c) 2013 Aron Cedercrantz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CDAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (unsafe_unretained) IBOutlet NSTextView *outputTextView;

@end
