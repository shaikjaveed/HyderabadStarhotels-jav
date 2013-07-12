//
//  DetailedView.h
//  HyderabadStarHotels
//
//  Created by ipapstudent on 02/04/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapView.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import "WebPage.h"
#import "HotelsModel.h"

@class MapView;
@interface DetailedView : UIViewController<NSURLConnectionDataDelegate,NSURLConnectionDelegate,UIAlertViewDelegate,UIWebViewDelegate,UIWebViewDelegate>{
    UIAlertView *alertView;


    BOOL  isAvailableForServiceType;
}

@property (retain,nonatomic) NSString *webViewString;
@property (retain,nonatomic) HotelsModel *hotelModelObj2;
@property (retain,nonatomic) IBOutlet UILabel *hotelLabel;
@property (strong,nonatomic) NSString *string;
- (IBAction)facebook:(id)sender;
@property (nonatomic,readonly)NSString *service;
@property (strong,nonatomic)   NSMutableArray *mobileNum;
@property (retain,nonatomic) IBOutlet UIImageView *new;
@property (strong,nonatomic) NSMutableData *responceData;
@property (retain,nonatomic) IBOutlet UITextView *textView;
@property (retain,nonatomic) NSDictionary *mapDic;
@property (retain,nonatomic) NSString* selectedMap;
@property (retain,nonatomic) NSString* hotelName;
@property (retain,nonatomic) IBOutlet UIButton *map;
@property (retain,nonatomic) IBOutlet UIButton *web;
@property (strong,nonatomic) UIImage *fb2;
@property (retain,nonatomic) IBOutlet UIImageView *newScreen;
@property (retain,nonatomic) NSString *mystring;
@property (retain,nonatomic) UIAlertView *alertMap1;
@property (retain,nonatomic) UIAlertView *web1;
@property (retain,nonatomic) NSArray *hotelImages;
@property (retain,nonatomic) UIImage *imgFromDifstr;
@property (retain,nonatomic) UIAlertView *phoneAlert;
@property (retain,nonatomic) UIAlertView *taxi;
@property (retain,nonatomic) NSString *string1;
@property (retain,nonatomic) NSString *string2;

@property (retain, nonatomic) IBOutlet UIImageView *Screen;

- (IBAction) goToWebPage:(id)sender;
- (IBAction) common:(id)sender;
- (IBAction) phoneNum:(id)sender;
- (IBAction) taxiButton:(id)sender;
- (IBAction) mapView:(id)sender;

@end
