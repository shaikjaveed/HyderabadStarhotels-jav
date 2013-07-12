//
//  DifferentStarHotels.h
//  HyderabadStarHotels
//
//  Created by ipapstudent on 28/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Customcell.h"
#import <QuartzCore/QuartzCore.h>
#import "DetailedView.h"
#import "HotelsModel.h"
@interface DifferentStarHotels : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
}

@property (strong,nonatomic) UILabel *labelView;
@property (strong,nonatomic) UIImageView *imageView;
@property (strong,nonatomic) UIView  *headerView;
@property (strong,nonatomic) NSString *UrlString;
@property (strong,nonatomic) UINavigationBar  *navBar;
@property (strong,nonatomic) NSString *myString99;
@property (strong,nonatomic) UILabel *myLabel;
@property (strong,nonatomic) UIImage *fbi;
@property (strong,nonatomic) DetailedView *detailViewController;
@property (strong,nonatomic) NSMutableArray *urlArray;
@property (strong,nonatomic) UINavigationController *navController;
@property (strong,nonatomic) HotelsModel *hotelModelobj;
@property (strong,nonatomic) NSMutableArray *allhotelImages;
@property (strong,nonatomic) CustomCell *customCell;
@property (strong,nonatomic) NSString *string2;
@property (nonatomic,retain) NSString* filePath;
@property (nonatomic,retain) UIImage* img;
@property (nonatomic,retain) UIImage* img1;

@end
