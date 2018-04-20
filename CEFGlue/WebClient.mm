//
//  WebClientMac.m
//  CEFGlue
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CEFBrowserView.h"
#import "CEFBrowserView+CEFIntegration.h"
#include "WebClient.h"

WebClient::WebClient(CEFBrowserView *webView)
{
    this->webView = webView;
}

void WebClient::OnAfterCreated(CefRefPtr<CefBrowser> browser)
{
    [this->webView onCreated:browser];
}

bool WebClient::DoClose(CefRefPtr<CefBrowser> browser)
{
    [this->webView onClose];
    
    this->webView = NULL;
    
    return true;
}
