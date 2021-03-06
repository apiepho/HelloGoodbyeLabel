//
//  ViewController.m
//  HelloGoodbyeLabel
//
//  Created by Al on 11/30/14.
//  Copyright (c) 2014 Thatname Group. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()
@property (weak) IBOutlet NSTextField *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

// first responder methods custom menu items
- (void)sayHello:(id)sender {
    NSLog(@"Hello");
    [self.label setStringValue:@"Hello"];
}
- (void)sayGoodbye:(id)sender {
    NSLog(@"Goodbye");
    [self.label setStringValue:@"Goodbye"];
}

// first responder methods for keyDown
- (void) keyDown:(NSEvent *)theEvent {
    NSLog(@"keyDown");
    switch ([theEvent keyCode]) {
        case 123:
            NSLog(@"back arrow");
            break;
        case 124:
            NSLog(@"next arrow");
            break;
            
        default:
            break;
    }
    NSLog(@"%d", [theEvent keyCode]);
}

@end
