//
//  AppDelegate.m
//  f
//
//  Created by Tanfanfan on 16/6/3.
//  Copyright © 2016年 Tanfanfan. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "NavigationController.h"
#import "SlidingViewController.h"

// 参考帖子

//http://aplus.rs/2013/state-restoration-in-ios-6-without-storyboards/

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //在window刚创建时设置的控制器,仅需要设置 restorationClass 
    
    
    FirstViewController *fristVc = [[FirstViewController alloc] init];
    
    NavigationController *nvc1 = [[NavigationController alloc] initWithRootViewController:fristVc];
    nvc1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:(UITabBarSystemItemContacts) tag:0];
    nvc1.restorationIdentifier = @"nvc1";
    
    SecondViewController *secondVc =[[SecondViewController alloc] init];
    
    NavigationController *nvc2 = [[NavigationController alloc] initWithRootViewController:secondVc];
    nvc2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:(UITabBarSystemItemHistory) tag:0];
    nvc2.restorationIdentifier = @"nvc2";

    
    MainTabBarController *mainVc = [[MainTabBarController alloc] init];
    mainVc.restorationIdentifier = NSStringFromClass([mainVc class]);
    mainVc.viewControllers = @[nvc1,nvc2];
    
    SlidingViewController  *slidingVc = [[SlidingViewController alloc] initWithTopViewController:mainVc];
    slidingVc.restorationIdentifier = NSStringFromClass([slidingVc class]);
    
    self.window.rootViewController = slidingVc;
    
    return YES;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder {
    
    
    return YES;
}


- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder {
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
