//
//  main.m
//  CEFSample
//
//  Created by YvonneDu on 4/18/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import "CEFBootstrapper.h"

int main(int argc, const char * argv[])
{
    [CEFBootstrapper initializeCEF];
    return NSApplicationMain(argc, argv);
}
