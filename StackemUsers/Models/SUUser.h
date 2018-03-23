//
//  SUUser.h
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SUUser : NSObject

- (instancetype)initWithUsername:(NSString *)username
                  goldBadgeCount:(NSUInteger)goldCount
                silverBadgeCount:(NSUInteger)silverCount
                bronzeBadgeCount:(NSUInteger)bronzeCount
                   gravatarURL:(NSURL *)gravatar;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@property (nonatomic, readonly) NSString *username;
@property (nonatomic, readonly) NSUInteger goldCount;
@property (nonatomic, readonly) NSUInteger silverCount;
@property (nonatomic, readonly) NSUInteger bronzeCount;
@property (nonatomic, readonly) NSURL *gravatar;

@end
