//
//  CEFBootstrapper.mm
//  CEFGlue
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "CEFBootstrapper.h"

#include "WebApp.h"

@implementation CEFBootstrapper

+ (void)initializeCEF
{
    // Insert code here to initialize your application
    CefMainArgs main_args(0, NULL);
    
    // Specify CEF global settings here.
    CefSettings settings;
    
    CefRefPtr<WebApp> app(new WebApp);
    
    // Initialize CEF for the browser process.
    CefInitialize(main_args, settings, app.get(), NULL);
    
    // Run message loop.
    CefRunMessageLoop();
    
    // Shutdown.
    CefShutdown();
}

+ (void)shutDownCEF
{
    CefQuitMessageLoop();
}

@end
