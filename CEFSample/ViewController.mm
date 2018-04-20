//
//  ViewController.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "ViewController.h"
#import "BrowserWindowController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)createBrowser:(id)sender {
}

- (IBAction)createBrowserInView:(id)sender
{
    TestBrowserWindowController *controller = [[TestBrowserWindowController alloc] initWithWindowNibName:@"BrowserWindow"];
    [[controller window] makeKeyAndOrderFront:self];
}

@end
