//
//  BrowserWindowController.m
//  CEFSample
//
//  Created by YvonneDu on 4/20/18.
//  Copyright © 2018 YvonneDu. All rights reserved.
//

#import "BrowserWindowController.h"

@implementation TestBrowserWindowController
- (BOOL)control:(NSControl *)control textView:(NSTextView *)textView doCommandBySelector:(SEL)commandSelector
{
    if (commandSelector == @selector(insertNewline:))
    {
        if ([self browserView] != nil && [self URLField] != nil)
        {
            [[self browserView] navigateTo:[NSString stringWithFormat:@"http://%@", [[self URLField] stringValue]]];
        }
        
        return true;
    }
    
    return false;
}
- (IBAction)CloseDevTool:(id)sender {
    if ([self browserView] != nil)
    {
        [[self browserView] closeDevTools];
    }
}

- (IBAction)OpenDevTool:(id)sender {
    
    if ([self browserView] != nil)
    {
        [[self browserView] showDevTools];
    }
}
@end
