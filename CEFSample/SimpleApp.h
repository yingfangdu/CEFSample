//
//  SimpleApp.hpp
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#ifndef SimpleApp_hpp
#define SimpleApp_hpp

#include "include/cef_app.h"

// Implement application-level callbacks for the browser process.
class SimpleApp : public CefApp, public CefBrowserProcessHandler {
public:
    SimpleApp();
    
    // CefApp methods:
    virtual CefRefPtr<CefBrowserProcessHandler> GetBrowserProcessHandler()
    OVERRIDE {
        return this;
    }
    
    // CefBrowserProcessHandler methods:
    virtual void OnContextInitialized() OVERRIDE;
    
private:
    // Include the default reference counting implementation.
    IMPLEMENT_REFCOUNTING(SimpleApp);
};


#endif /* SimpleApp_hpp */
