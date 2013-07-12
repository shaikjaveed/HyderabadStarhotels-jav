//
//  CustomCell.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 30/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "CustomCell.h"
#import <QuartzCore/QuartzCore.h>
@class DifferentStarHotels;
@implementation CustomCell
@synthesize img;
@synthesize name;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
//        self.img.layer.cornerRadius =20;
//    
//        
////        
////        
//        [self.img.layer setCornerRadius:5.0];
//        [self.img.layer setMasksToBounds:YES];
//   
//       
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
