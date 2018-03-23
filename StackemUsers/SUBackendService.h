//
//  SUBackendService.h
//  StackemUsers
//
//  Created by David Park on 3/22/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "SUUser.h"

@interface SUBackendService : NSObject

- (void )fetchAllUsers:(void (^)(id result, NSError *error))block ;

@end
