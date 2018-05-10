//
//  CEFBootstrapper.mm
//  CEFGlue
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "CEFBootstrapper.h"
#include "WebApp.h"

CefRefPtr<WebApp> g_app = NULL;

@implementation CEFBootstrapper

+ (void)initializeCEF
{
    assert(g_app == NULL);
    
    // Insert code here to initialize your application
    CefMainArgs main_args(0, NULL);
    
    // Specify CEF global settings here.
    CefSettings settings;
    
    g_app = new WebApp;
    
    // Initialize CEF for the browser process.
    CefInitialize(main_args, settings, g_app.get(), NULL);
}

+ (void)terminateCEFLoop
{
    assert(g_app != NULL);
    CefQuitMessageLoop();
}
    
+ (void)runCEFLoop
{
    assert(g_app != NULL);
    // Run message loop.
    CefRunMessageLoop();
}
    
+ (void)shutDownCEF
{
   assert(g_app != NULL);
    
   // Shutdown.
   CefShutdown();
    
   g_app = NULL;
}

@end
