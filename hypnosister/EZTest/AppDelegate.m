//
//  AppDelegate.m
//  EZTest
//
//  Created by yize on 15/11/7.
//  Copyright © 2015年 yize. All rights reserved.
//

#import "AppDelegate.h"
#import "CircleView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *vc = [[UIViewController alloc]init];
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    
    bigRect.size.width *=2.0;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    
    CircleView *firstView = [[CircleView alloc] initWithFrame:screenRect];
    
    
    firstView.backgroundColor = [UIColor clearColor];
    
    [scrollView addSubview:firstView];
    

    screenRect.origin.x +=screenRect.size.width;
    CircleView *secondView = [[CircleView alloc]initWithFrame:screenRect];
    
    [scrollView addSubview:secondView];
    
    
    scrollView.contentSize = bigRect.size;
    
    scrollView.pagingEnabled = YES;

    [vc.view addSubview:scrollView];
    
    self.window.rootViewController = vc;
    self.window.backgroundColor = [UIColor whiteColor];

    
    [self.window makeKeyAndVisible];
    

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
