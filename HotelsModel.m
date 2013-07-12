//
//  HotelsModel.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 03/07/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "HotelsModel.h"

@implementation HotelsModel

-(id)init
{

    if (self=[super init]) {
   
    self.urlarray =[[NSMutableArray alloc]initWithObjects:@"http://tajhotels.com",@"http://hyderabad.park.hyatth.com",@"http://hyderabadmarriott.com",@"http://theparkhotels.co",@"http://tajhotels.com",@"http://hicc.com",@"http://itcwelcomegroup.in",@"http://radissonblu.com",@"http://tajhotels.com",@"http://hotelavasa.com",@"http://tajhotels.com",nil];
        
    self.fourStarUrls=[[NSMutableArray alloc]initWithObjects:@"http://www.thegolkondahotel.com",@"http//www.mercure.com",@"www.hotelgreenpark.com",@"www.lemontreehotels.com",@"www.minervagrand.com",@"www.qualityinn.com",@"www.thesquarehotel.chobs.in",@"http://daspallahyderabad.in", nil];

    self.threeStarUrls=[[NSMutableArray alloc]initWithObjects:@"http//baseraa.com",@"www.ohris.com",@"http//hotelharsha.net",@"www.bestwesternamruthacastle.com", nil];
        

    self.allhotelArray=[[NSMutableArray alloc]initWithObjects:self.urlarray,self.fourStarUrls,self.threeStarUrls, nil];
        
        
    self.fiveStarHotels  = [[NSMutableArray  alloc]initWithObjects:@"Taj Banjara",@"Hyatt ",@"Marriot Hotel",@"The park",@"Taj Krishna",@"Novotel",@"ITC Kakatiya",@"Radisson Blu ",@"Vivanta",@"Avasa",@"TajFalaknumaPalace",nil];

    self.fourStarHotels =[[NSMutableArray alloc]initWithObjects:@"The Golkonda Hotel",@"Mercure",@"Hotel Green Park",@"Lemon Tree Premier",@"Minerva Grarand",@"Quality Inn Pearl",@"The Square",@"Daspalla", nil];

    self.threeStarHotels =[[NSMutableArray alloc]initWithObjects:@"Hotel Basera",@"Ohris Banjara",@"hotel Harsha",@"Amrutha Castle", nil];
    self.fivehotelImages=[[NSMutableArray alloc]initWithObjects:@"TAjBanjara1.png",@"Hyatt.png",@"Marriot.png",@"Park.png", @"TajKrishna.png",@"Novatel.png",@"Itc Kakatiya.png",@"Radisonblu.png",@"Vivanta.png",@"Avasa.png",@"TAj FAlkunuma.png",nil];


    self.fourhotelImages=[[NSMutableArray alloc]initWithObjects:@"golkonda.png",@"mercure.png",@"Greenland.png",@"lemontree.png",@"minervagrand.png",@"Qualityinn.png",@"Timesquare.png",@"Dasapalla.png", nil];

    self.threehotelImages=[[NSMutableArray alloc]initWithObjects:@"Basera.png",@"ohris.png",@"harsha.png",@"hotelamrutha.png", nil];


    self.allhotelImages=[NSArray arrayWithObjects:self.fivehotelImages,self.fourhotelImages,self.threehotelImages,nil];
    self.hotels =[[NSMutableArray alloc]initWithObjects:_fiveStarHotels,_fourStarHotels,_threeStarHotels, nil];
        NSLog(@"%d",[self.hotels count]);

 self.mobileNum =[[NSMutableArray alloc]initWithObjects:@"tel://+914066669999",@"tel://04049491234",@"tel://+914027522999",@"tel://",@"tel://04066662323",@"tel://+914066824422",@"tel://9140 23400132",@"tel://04067331133",@"tel://04067252626",@"tel://04067282828",@"tel://04066298585", nil] ;



        self.taxiMobileNumbers=[[NSMutableArray alloc]initWithObjects:@"tel://+914044224422",@"tel://+9104043434343",@"tel://+914044224422",@"tel://04044224422",@"tel://04044224422",@"tel://04030222277",@"tel://+9104043434343",@"tel://04044224422",@"tel://+914043434343",@"tel://+914044224422",@"tel://04044224422",@"tel://04044224422",@"tel://+914043434343", nil];
        







        

    }
    return self;

        
}












@end
