//
//  AppDelegate.m
//  StackemUsers
//
//  Created by David Park on 3/21/18.
//  Copyright © 2018 DavidVY. All rights reserved.
//

#import "AppDelegate.h"
#import "SUUserTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
  SUUserTableViewController* vc = [[SUUserTableViewController alloc] init];
  UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
  [navController setNavigationBarHidden:YES];
  
  self.window.rootViewController = navController;
  [self.window makeKeyAndVisible];
  
  return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
