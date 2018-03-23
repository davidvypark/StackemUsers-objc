//
//  SUUserCellViewModel.h
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SUUser.h"

@interface SUUserCellViewModel : NSObject

- (instancetype)initWithUser:(SUUser *)user;

@property (nonatomic, readonly) NSString *username;
@property (nonatomic, readonly) NSString *goldCount;
@property (nonatomic, readonly) NSString *silverCount;
@property (nonatomic, readonly) NSString *bronzeCount;
@property (nonatomic, readonly) NSURL *gravatar;

@end
