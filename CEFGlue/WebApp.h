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
class WebApp : public CefApp{
public:
    WebApp() {}
    
private:
    // Include the default reference counting implementation.
    IMPLEMENT_REFCOUNTING(WebApp);
};


#endif /* SimpleApp_hpp */
