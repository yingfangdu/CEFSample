//
//  BrowserWindowController.m
//  CEFSample
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CEFBrowserView.h"

@interface TestBrowserWindowController : NSWindowController
- (IBAction)OpenDevTool:(id)sender;
@property (assign) IBOutlet NSTextField *URLField;
@property (strong, nonatomic) IBOutlet CEFBrowserView *browserView;
@end
