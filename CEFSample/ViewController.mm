//
//  ViewController.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "ViewController.h"

#include "include/cef_browser.h"
#include "include/cef_command_line.h"
#include "include/views/cef_browser_view.h"
#include "include/views/cef_window.h"
#include "include/wrapper/cef_helpers.h"
#include "SimpleHandler.h"
#include "include/cef_app.h"

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
    // SimpleHandler implements browser-level callbacks.
    CefRefPtr<SimpleHandler> handler(SimpleHandler::GetInstance());
    
    // Specify CEF browser settings here.
    CefBrowserSettings browser_settings;
    
    CefWindowInfo window_info;
    
    std::string url = "www.google.com";
    
    // Create the first browser window.
    CefBrowserHost::CreateBrowser(window_info, handler, url, browser_settings, NULL);
//    CefRunMessageLoop();
}
    
@end
