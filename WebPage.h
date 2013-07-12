//
//  WebPage.h
//  HyderabadStarHotels
//
//  Created by apple on 08/06/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebPage : UIViewController<UIWebViewDelegate>
@property (retain, nonatomic) IBOutlet UIWebView *webPageOutlet;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *activeIndicator;

@end
