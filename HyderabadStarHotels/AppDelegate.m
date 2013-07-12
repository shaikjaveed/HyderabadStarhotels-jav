//
//  AppDelegate.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 28/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "DifferentStarHotels.h"
#import "ViewController.h"

@implementation AppDelegate
@synthesize navcontroller;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.filePath = [[NSString alloc]init];
    // Override point for customization after application launch.


    [NSThread sleepForTimeInterval:1.0];
    self.mylabel=[[UILabel alloc]init];
    
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    
    ViewController *fView =[[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];

    NSString *bundlePath=[[NSBundle mainBundle] pathForResource:@"latituteandlongitude" ofType:@"plist"];
    NSString *docpath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];

    self.filePath =[docpath stringByAppendingPathComponent:@"latituteandlongitude.plist"];
    navcontroller =[[UINavigationController alloc]initWithRootViewController:fView];
        NSFileManager *fmanager=[NSFileManager defaultManager];
        NSError *error;
        if ([fmanager fileExistsAtPath:self.filePath]) {
            NSLog(@"file existed");
        }
        else
        {
            [fmanager copyItemAtPath:bundlePath toPath:self.filePath error:&error];
        }
    
    self.window.rootViewController = navcontroller;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
