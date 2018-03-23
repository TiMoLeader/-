//
//  AppDelegate.m
//  启动动画
//
//  Created by fighting on 2018/3/15.
//  Copyright © 2018年 Mr.li. All rights reserved.
//

#import "AppDelegate.h"
#import "LaunchView.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //这里一定要调用[self.window makeKeyAndVisible]，让窗口成为主窗口，并且显示出来。
    [self.window makeKeyAndVisible];
    
    LaunchView *launchView = [[LaunchView alloc] init];
    //默认动画时间为2s
    launchView.time = 2.f;
    [launchView startAnimation];
    
    launchView.animationFinish = ^{
        NSLog(@"动画结束了");
    };
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
