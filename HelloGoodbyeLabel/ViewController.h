//
//  ViewController.h
//  HelloGoodbyeLabel
//
//  Created by Al on 11/30/14.
//  Copyright (c) 2014 Thatname Group. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

// first responder methods custom menu items
// DISCOVERY: in order to add new menu item and hook to first responder chain
//  - in storyboard, drag/drop submenu item
//  - change/add new menuitems
//  - select and right click/drag new menuitem to the first responder above menu
//  - TRICK: select an existing action selector (ie. action:)
//  - TRICK: open story board as text, search for new action (ie. action:)
//           and change to selector you want (ie. sayHello:)
//  - now we can add these first responder methods
- (void)sayHello:(id)sender;
- (void)sayGoodbye:(id)sender;

// first responder methods for keyDown
- (void) keyDown:(NSEvent *)theEvent;

@end

