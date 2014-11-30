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
    
    // WORKAROUND: wanted to use First Responder for Menu Items, but could never get it working.  Instead,
    // we will manually find our menu items and change the action selector.
    
    NSMenu *mainMenu = [[NSApplication sharedApplication] mainMenu];
    NSInteger ourIndex = 0;
    for (NSMenuItem *item in [mainMenu itemArray]) {
        NSLog(@"%@", [item title]);
        if ([@"Ours" isEqualToString:[item title]]) {
            NSMenu *appMenu = [[mainMenu itemAtIndex:ourIndex] submenu];
            for (NSMenuItem *item in [appMenu itemArray]) {
                NSLog(@"%@", [item title]);
                if ([@"Say Hello" isEqualToString:[item title]]) {
                    [item setAction:@selector(sayHello:)];
                }
                if ([@"Say Goodbye" isEqualToString:[item title]]) {
                    [item setAction:@selector(sayGoodbye:)];
                }
            }
        }
        ourIndex++;
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)sayHello:(id)sender {
    NSLog(@"Hello");
    [self.label setStringValue:@"Hello"];
}

- (IBAction)sayGoodbye:(id)sender {
    NSLog(@"Goodbye");
    [self.label setStringValue:@"Goodbye"];
}

@end
