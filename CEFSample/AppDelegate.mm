//
//  AppDelegate.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "AppDelegate.h"

#include "include/cef_application_mac.h"
#include "include/wrapper/cef_helpers.h"
#include "SimpleApp.h"
#include "SimpleHandler.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"applicationDidFinishLaunching");
    
    // Insert code here to initialize your application
    CefMainArgs main_args(0, NULL);
    
    // Specify CEF global settings here.
    CefSettings settings;
    
    CefString(&settings.framework_dir_path) = L"/Users/yvonnedu/Library/Developer/Xcode/DerivedData/CEFSample-fdazvjutojxnxqcvxywpkwmonxtz/Build/Products/Debug/CEFSample.app/Contents/Frameworks/Chromium Embedded Framework.framework";
    
    // SimpleApp implements application-level callbacks for the browser process.
    // It will create the first browser instance in OnContextInitialized() after
    // CEF has initialized.
    CefRefPtr<SimpleApp> app(new SimpleApp);
    
    // Initialize CEF for the browser process.
    CefInitialize(main_args, settings, app.get(), NULL);
    
    CefRunMessageLoop();
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"applicationWillTerminate");
}

- (void)createApplication:(id)object {
    [NSApplication sharedApplication];
    [[NSBundle mainBundle] loadNibNamed:@"MainMenu"
                                  owner:NSApp
                        topLevelObjects:nil];
    
    // Set the delegate for application events.
    [[NSApplication sharedApplication] setDelegate:self];
}

- (void)tryToTerminateApplication:(NSApplication*)app {
    SimpleHandler* handler = SimpleHandler::GetInstance();
    if (handler && !handler->IsClosing())
        handler->CloseAllBrowsers(false);
}
@end
