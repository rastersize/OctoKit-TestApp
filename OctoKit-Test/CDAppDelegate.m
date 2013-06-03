//
//  CDAppDelegate.m
//  OctoKit-Test
//
//  Created by Aron Cedercrantz on 03-06-2013.
//  Copyright (c) 2013 Aron Cedercrantz. All rights reserved.
//

#import "CDAppDelegate.h"
#import <OctoKit/OctoKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <Mantle/Mantle.h>

@implementation CDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	OCTUser *user = [OCTUser userWithLogin:@"octocat" server:OCTServer.dotComServer];
	OCTClient *client = [OCTClient unauthenticatedClientWithUser:user];
	[[[client fetchUserInfo] logAll] subscribeNext:^(id x) {
		dispatch_async(dispatch_get_main_queue(), ^{
			self.outputTextView.string = [x description];
		});
	}];
}

@end
