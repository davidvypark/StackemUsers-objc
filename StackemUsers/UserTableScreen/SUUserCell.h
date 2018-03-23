//
//  SUUserCell.h
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SUUserCell : UITableViewCell

@property (strong, nonatomic) UIImageView *gravatarImage;
@property (strong, nonatomic) UILabel *usernameLabel;
@property (strong, nonatomic) UILabel *goldBadgeLabel;
@property (strong, nonatomic) UILabel *silverBadgeLabel;
@property (strong, nonatomic) UILabel *bronzeBadgeLabel;
@property (strong, nonatomic) UIView *box;

- (void)showIndicator;
- (void)hideIndicator;

@end
