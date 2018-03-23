//
//  UIColor+StackemUsers.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "UIColor+StackemUsers.h"

@implementation UIColor (StackemUsers)

+ (UIColor *)gold {
  return [UIColor colorWithHex:0xD4AF37
                         alpha:1];
}

+ (UIColor *)silver {
  return [UIColor colorWithHex:0xC0C0C0
                         alpha:1];
}

+ (UIColor *)bronze {
  return [UIColor colorWithHex:0xCD7F32
                         alpha:1];
}

+ (UIColor *)suGray {
  return [UIColor colorWithHex:0x7e7e7e
                         alpha:1];
}

#pragma mark helper

+ (UIColor *)colorWithHex:(NSUInteger)rgb
                    alpha:(CGFloat)alpha {
  return [UIColor colorWithRed:((CGFloat)((rgb & 0xFF0000) >> 16))/255.0
                         green:((CGFloat)((rgb & 0xFF00) >> 8))/255.0
                          blue:((CGFloat)(rgb & 0xFF))/255.0
                         alpha:alpha];
}

@end
