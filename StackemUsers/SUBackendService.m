//
//  SUBackendService.m
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "SUBackendService.h"

static NSString * const baseURL = @"https://api.stackexchange.com/2.2/users?site=stackoverflow";

@implementation SUBackendService

- (void)fetchAllUsers:(void (^)(id result, NSError *error))block {
  
  NSString *route = [NSString stringWithFormat:@"%@", baseURL];
  NSURL *url = [NSURL URLWithString:route];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
  operation.responseSerializer = [AFJSONResponseSerializer serializer];
  
  [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
    block(responseObject, nil);
  } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
    
  }];
  [[NSOperationQueue mainQueue] addOperation:operation];

}

@end
