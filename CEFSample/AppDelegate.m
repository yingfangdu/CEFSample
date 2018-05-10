//
//  AppDelegate.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import "CEFBootstrapper.h"

@interface AppDelegate : NSObject<NSApplicationDelegate>
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [CEFBootstrapper runCEFLoop];
    [CEFBootstrapper shutDownCEF];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    [CEFBootstrapper terminateCEFLoop];
}

@end
