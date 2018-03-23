//
//  SUUserTableViewController.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "SUUserTableViewController.h"
#import "SUUserCell.h"
#import "SUUserCellViewModel.h"
#import "UIImageView+AFNetworking.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface SUUserTableViewController ()

@property (strong, nonatomic) NSMutableArray<SUUser *> *userArray;
@property (strong, nonatomic) NSMutableArray<SUUserCellViewModel *> *userCellViewModelArray;

@end

@implementation SUUserTableViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self.tableView registerClass:[SUUserCell class] forCellReuseIdentifier: SUUserCell.description];
  self.view.backgroundColor = [UIColor whiteColor];
  self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)viewDidAppear:(BOOL)animated {
  [self fetchUserData];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)fetchUserData {
  SUBackendService *service = [[SUBackendService alloc] init];
  [service fetchAllUsers:^(id result, NSError *error) {
    self.userArray = [self parseItemsFromJSON:result];
    self.userCellViewModelArray = [[NSMutableArray alloc] init];
    for(SUUser *user in self.userArray) {
      SUUserCellViewModel *userModel = [[SUUserCellViewModel alloc] initWithUser:user];
      [self.userCellViewModelArray addObject:userModel];
    }
    [self.tableView reloadData];
  }];
}

- (NSMutableArray *)parseItemsFromJSON:(NSDictionary *)result {
  NSArray *userJSONArray = result[@"items"];
  
  NSMutableArray *userArray = [[NSMutableArray alloc] init];
  
  for (NSDictionary *userDict in userJSONArray) {
    SUUser *userModel = [[SUUser alloc] initWithDictionary:userDict];
    [userArray addObject:userModel];
  }
  return userArray;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [self.userCellViewModelArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  SUUserCell *cell = [tableView dequeueReusableCellWithIdentifier:SUUserCell.description forIndexPath:indexPath];
  SUUserCellViewModel *viewModel = self.userCellViewModelArray[indexPath.row];
  cell.usernameLabel.text = viewModel.username;
  cell.goldBadgeLabel.text = viewModel.goldCount;
  cell.silverBadgeLabel.text = viewModel.silverCount;
  cell.bronzeBadgeLabel.text = viewModel.bronzeCount;
  [cell showIndicator];
  [cell.gravatarImage sd_setImageWithURL:viewModel.gravatar completed:^(UIImage * _Nullable image,
                                                                        NSError * _Nullable error,
                                                                        SDImageCacheType
                                                                        cacheType,
                                                                        NSURL * _Nullable imageURL) {
    [cell hideIndicator];
  }];
  return cell;
}

@end
