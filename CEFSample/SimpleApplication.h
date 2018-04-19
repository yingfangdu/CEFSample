//
//  SimpleApplication.h
//  CEFSample
//
//  Created by YvonneDu on 4/19/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#include "include/cef_application_mac.h"

// Provide the CefAppProtocol implementation required by CEF.
@interface SimpleApplication : NSApplication<CefAppProtocol> {
@private
    BOOL handlingSendEvent_;
}
@end

