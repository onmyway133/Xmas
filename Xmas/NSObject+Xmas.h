//
//  NSObject+Xmas.h
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Xmas)

- (id)xmas_initWithIcon:(id)icon
                message:(id)message
           parentWindow:(id)parentWindow
               duration:(double)duration;

@end
