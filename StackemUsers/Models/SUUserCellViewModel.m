//
//  SUUserCellViewModel.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "SUUserCellViewModel.h"

@interface SUUserCellViewModel ()

@property (nonatomic, readwrite) NSString *username;
@property (nonatomic, readwrite) NSString *goldCount;
@property (nonatomic, readwrite) NSString *silverCount;
@property (nonatomic, readwrite) NSString *bronzeCount;
@property (nonatomic, readwrite) NSURL *gravatar;

@end

@implementation SUUserCellViewModel

- (instancetype)initWithUser:(SUUser *)user {
  
  if (self) {
    self = [super init];
    _username = [user.username uppercaseString];
    _goldCount = [NSString stringWithFormat:@"Gold: %lu", user.goldCount];
    _silverCount = [NSString stringWithFormat:@"Silver: %lu", user.silverCount];
    _bronzeCount = [NSString stringWithFormat:@"Bronze: %lu", user.bronzeCount];
    _gravatar = user.gravatar;
  }
  
  return self;
}

@end
