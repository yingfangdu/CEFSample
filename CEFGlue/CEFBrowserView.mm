//
//  WebView.m
//  CEFSample
//
//  Created by YvonneDu on 4/19/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "CEFBrowserView.h"
#import "CEFBrowserView+CEFIntegration.h"
#include "WebClient.h"

@implementation CEFBrowserView (CEFIntegration)

-(void)onCreated:(CefRefPtr<CefBrowser>)browser
{
    self->_browser = browser;
}

-(void)onClose
{
    self->_browser = NULL;
}

@end

@implementation CEFBrowserView

-(bool)isBrowserInitialized
{
    return self->_browser != NULL;
}

-(void)navigateTo:(NSString*)location
{
    if ([self isBrowserInitialized])
    {
        self->_browser->StopLoad();
        self->_browser->GetMainFrame()->LoadURL([location UTF8String]);
    }
    else
    {
        [self createCEFBrowser:location];
    }
}

-(void)reload
{
    if ([self isBrowserInitialized])
    {
        self->_browser->ReloadIgnoreCache();
    }
}

- (void)createCEFBrowser:(NSString *)initialUrl
{
    // Create the web browser view.
    CefWindowInfo window_info;
    window_info.SetAsChild(self, 0, 0, self.bounds.size.width, self.bounds.size.height);
    
    CefRefPtr<WebClient> client(new WebClient(self));
    
    // Specify CEF browser settings here.
    CefBrowserSettings browser_settings;
    
    std::string url([initialUrl UTF8String]);
    
    // Create the first browser window.
    CefBrowserHost::CreateBrowser(window_info, client, url, browser_settings, NULL);
}

@end
