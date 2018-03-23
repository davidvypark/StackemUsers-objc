//
//  SUUser.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "SUUser.h"

@interface SUUser ()

@property (nonatomic, readwrite) NSString *username;
@property (nonatomic, readwrite) NSUInteger goldCount;
@property (nonatomic, readwrite) NSUInteger silverCount;
@property (nonatomic, readwrite) NSUInteger bronzeCount;
@property (nonatomic, readwrite) NSURL *gravatar;

@end

@implementation SUUser

- (instancetype)initWithUsername:(NSString *)username
                  goldBadgeCount:(NSUInteger)goldCount
                silverBadgeCount:(NSUInteger)silverCount
                bronzeBadgeCount:(NSUInteger)bronzeCount
                   gravatarURL:(NSURL *)gravatar {
  if (self) {
    self = [super init];
    _username = username;
    _goldCount = goldCount;
    _silverCount = silverCount;
    _bronzeCount = bronzeCount;
    _gravatar = gravatar;
  }
  
  return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
  
  if (self) {
    self = [super init];
    _username = dict[@"display_name"];
    _goldCount = [dict[@"badge_counts"][@"gold"] integerValue];
    _silverCount = [dict[@"badge_counts"][@"silver"] integerValue];
    _bronzeCount = [dict[@"badge_counts"][@"bronze"] integerValue];
    NSString *urlString = dict[@"profile_image"];
    _gravatar = [NSURL URLWithString:urlString];
  }
  
  return self;
}

@end
