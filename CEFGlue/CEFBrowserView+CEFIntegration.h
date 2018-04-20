//
//  CEFBrowserView+CEFIntegration.h
//  CEFSample
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#ifndef CEFBrowserView_CEFIntegration_h
#define CEFBrowserView_CEFIntegration_h

@interface CEFBrowserView (CEFIntegration)

-(void)onCreated:(CefRefPtr<CefBrowser>)browser;
-(void)onClose;

@end

#endif /* CEFBrowserView_CEFIntegration_h */
