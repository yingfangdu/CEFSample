//
//  main.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "SimpleApplication.h"
#import "AppDelegate.h"

#include "include/cef_application_mac.h"
#include "include/wrapper/cef_helpers.h"
#include "SimpleApp.h"
#include "SimpleHandler.h"

int main(int argc, const char * argv[]) {
    return NSApplicationMain(argc, argv);
    
//    // Initialize the SimpleApplication instance.
//    [SimpleApplication sharedApplication];
//    
//    // Insert code here to initialize your application
//    CefMainArgs main_args(0, NULL);
//    
//    // Specify CEF global settings here.
//    CefSettings settings;
//    
//    CefString(&settings.framework_dir_path) = L"/Users/yvonnedu/Library/Developer/Xcode/DerivedData/CEFSample-fdazvjutojxnxqcvxywpkwmonxtz/Build/Products/Debug/CEFSample.app/Contents/Frameworks/Chromium Embedded Framework.framework";
//    
//    // SimpleApp implements application-level callbacks for the browser process.
//    // It will create the first browser instance in OnContextInitialized() after
//    // CEF has initialized.
//    CefRefPtr<SimpleApp> app(new SimpleApp);
//    
//    // Initialize CEF for the browser process.
//    CefInitialize(main_args, settings, app.get(), NULL);
//    
//    // Create the application delegate.
//    NSObject* delegate = [[AppDelegate alloc] init];
//    [delegate performSelectorOnMainThread:@selector(createApplication:)
//                               withObject:nil
//                            waitUntilDone:NO];
//    
//    CefRunMessageLoop();
    
    // Shut down CEF.
    CefShutdown();
}
