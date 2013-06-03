//
//  CDViewController.m
//  OctoKit-Test App iOS
//
//  Created by Aron Cedercrantz on 03-06-2013.
//  Copyright (c) 2013 Aron Cedercrantz. All rights reserved.
//

#import "CDViewController.h"
#import <OctoKit/OctoKit.h>

@interface CDViewController ()
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;

@end

@implementation CDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	OCTUser *user = [OCTUser userWithLogin:@"octocat" server:OCTServer.dotComServer];
	OCTClient *client = [OCTClient unauthenticatedClientWithUser:user];
	[[[client fetchUserInfo] logAll] subscribeNext:^(id x) {
		dispatch_async(dispatch_get_main_queue(), ^{
			self.outputTextView.text = [x description];
		});
	}];
}

@end
