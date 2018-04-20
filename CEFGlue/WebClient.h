//
//  SimpleHandler.hpp
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#ifndef SimpleHandler_hpp
#define SimpleHandler_hpp

#include "include/cef_client.h"

class WebClient : public CefClient, public CefDisplayHandler, public CefLifeSpanHandler, public CefLoadHandler
{
public:
    WebClient(CEFBrowserView *webView);
    
    // CefClient methods:
    virtual CefRefPtr<CefDisplayHandler> GetDisplayHandler() OVERRIDE { return this; }
    
    virtual CefRefPtr<CefLifeSpanHandler> GetLifeSpanHandler() OVERRIDE { return this; }
    
    virtual CefRefPtr<CefLoadHandler> GetLoadHandler() OVERRIDE { return this; }
    
    // CefLifeSpanHandler
    virtual void OnAfterCreated(CefRefPtr<CefBrowser> browser) OVERRIDE;
    
    virtual bool DoClose(CefRefPtr<CefBrowser> browser) OVERRIDE;
    
private:
    
    // Include the default reference counting implementation.
    IMPLEMENT_REFCOUNTING(WebClient);
    
    CEFBrowserView *webView;
};

#endif /* SimpleHandler_hpp */
