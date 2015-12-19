//
//  NSObject+Xmas.m
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

#import "NSObject+Xmas.h"
#import <AppKit/AppKit.h>
#import "Xmas-Swift.h"

@implementation NSObject (Xmas)

- (id)xmas_initWithIcon:(id)icon
                message:(NSString *)message
           parentWindow:(id)parentWindow
               duration:(double)duration {
    if (icon && [ToggleManager isEnabled] && [message containsString:@"Succeeded"]) {
        NSBundle *bundle = [NSBundle bundleWithIdentifier:@"com.fantageek.Xmas"];

        Gift *gift = [GiftManager makeGift];

        NSImage *image = [bundle imageForResource:gift.imageName];
        
        [self xmas_initWithIcon:image message:gift.message parentWindow:parentWindow duration:duration];

        if ([self isKindOfClass:[NSPanel class]]) {
            NSPanel *panel = (id)self;

            if ([panel.contentView isKindOfClass:[NSVisualEffectView class]]) {
                NSVisualEffectView *e = (id)panel.contentView;

                e.material = NSVisualEffectMaterialTitlebar;

                // Set back to original
                image.template = NO;
            }
        }

        return self;
    }

    return [self xmas_initWithIcon:icon message:message parentWindow:parentWindow duration:duration];
}

@end
