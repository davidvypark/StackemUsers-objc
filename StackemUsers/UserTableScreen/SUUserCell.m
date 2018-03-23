//
//  SUUserCell.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "SUUserCell.h"
#import "UIColor+StackemUsers.h"

@interface SUUserCell ()

@property (strong, nonatomic) UIActivityIndicatorView *activityView;

@end

@implementation SUUserCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    [self setupViews];
  }
  
  return self;
}

- (instancetype)init {
  return [self initWithFrame:CGRectZero];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self setupViews];
  }
  
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setupViews];
  }
  
  return self;
}

- (void)setupViews {
  self.backgroundColor = [UIColor clearColor];
  self.selectionStyle = UITableViewCellSelectionStyleNone;
  
  self.box = [[UIView alloc] init];
  self.box.translatesAutoresizingMaskIntoConstraints = NO;
  self.box.backgroundColor = [UIColor suGray];
  self.box.layer.cornerRadius = 10;
  
  self.gravatarImage = [[UIImageView alloc] init];
  self.gravatarImage.translatesAutoresizingMaskIntoConstraints = NO;
  self.gravatarImage.backgroundColor = [UIColor blackColor];
  self.gravatarImage.clipsToBounds = YES;
  self.gravatarImage.layer.cornerRadius = 50;
  
  self.usernameLabel = [[UILabel alloc] init];
  self.usernameLabel.translatesAutoresizingMaskIntoConstraints = NO;
  self.usernameLabel.text = @"username";
  
  self.goldBadgeLabel = [[UILabel alloc] init];
  self.goldBadgeLabel.translatesAutoresizingMaskIntoConstraints = NO;
  self.goldBadgeLabel.text = @"GOLD BADGES: 1000";
  self.goldBadgeLabel.textColor = [UIColor gold];
  
  self.silverBadgeLabel = [[UILabel alloc] init];
  self.silverBadgeLabel.translatesAutoresizingMaskIntoConstraints = NO;
  self.silverBadgeLabel.text = @"SILVER BADGES: 1000";
  self.silverBadgeLabel.textColor = [UIColor silver];
  
  self.bronzeBadgeLabel = [[UILabel alloc] init];
  self.bronzeBadgeLabel.translatesAutoresizingMaskIntoConstraints = NO;
  self.bronzeBadgeLabel.text = @"BRONZE BADGES: 1000";
  self.bronzeBadgeLabel.textColor = [UIColor bronze];
  
  self.activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
  self.activityView.translatesAutoresizingMaskIntoConstraints = NO;
  
  [self.contentView addSubview:self.box];
  [self.contentView addSubview:self.gravatarImage];
  [self.contentView addSubview:self.usernameLabel];
  [self.contentView addSubview:self.goldBadgeLabel];
  [self.contentView addSubview:self.silverBadgeLabel];
  [self.contentView addSubview:self.bronzeBadgeLabel];
  [self.contentView addSubview:self.activityView];
  
  //Box
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.box
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1
                                                                constant:5]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.box
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1
                                                                constant:-5]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.box
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1
                                                                constant:10]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.box
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:-10]];
  
  //Gravatar Image
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.box
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1
                                                                constant:15]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1
                                                                constant:100]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1
                                                                constant:100]];
  
  //Username Label
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.usernameLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:20]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.usernameLabel
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:0.4
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.usernameLabel
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:-20]];
  
  //Gold Badge Label
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.goldBadgeLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:20]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.goldBadgeLabel
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:0.8
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.goldBadgeLabel
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:-20]];
  
  //Silver Badge Label
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.silverBadgeLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:20]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.silverBadgeLabel
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1.2
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.silverBadgeLabel
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:-20]];
  
  //Bronze Badge Label
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.bronzeBadgeLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:20]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.bronzeBadgeLabel
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1.6
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.bronzeBadgeLabel
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.contentView
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1
                                                                constant:-20]];
  
  //Activity Indicator
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.activityView
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1
                                                                constant:0]];
  [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.activityView
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.gravatarImage
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1
                                                                constant:0]];
  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  [super setSelected:selected animated:animated];
}

- (void)showIndicator {
  [self.activityView startAnimating];
  self.activityView.alpha = 1;
}

- (void)hideIndicator {
  [self.activityView stopAnimating];
  self.activityView.alpha = 0;
}

@end
