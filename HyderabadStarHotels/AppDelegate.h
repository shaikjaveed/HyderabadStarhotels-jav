//
//  AppDelegate.h
//  HyderabadStarHotels
//
//  Created by ipapstudent on 28/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property  (strong, nonatomic) UILabel *mylabel;
@property  (strong, nonatomic) UIWindow *window;
@property  (strong, nonatomic) ViewController *viewController;
@property  (strong,nonatomic)  UINavigationController *navcontroller;
@property  (retain,nonatomic)  NSString *filePath;

@end
