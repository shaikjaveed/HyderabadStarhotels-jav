//
//  MapView.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 12/04/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "MapView.h"

@interface MapView ()

@end

@implementation MapView
@synthesize selectedLocation;
@synthesize mapViewScreen=_mapViewScreen;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //self.locatoionOfHotel = [[NSDictionary alloc]init];
        //self.langDic = [[NSMutableDictionary alloc]init];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.locatoionOfHotel = [[NSMutableDictionary alloc]init];
   // double locationLatitude =[[self.langDic objectForKey:self.hotelName] doubleValue];
   //double locationLongitude = [[self.langDic objectForKey:@"longitude"] doubleValue];
    NSLog(@"%@ hotels names",self.hotelName);
    NSLog(@"langdic values are :%@",self.langDic);
    self.locatoionOfHotel =    [self.langDic objectForKey:self.hotelName];
    NSLog(@"location of hotel%@",self.locatoionOfHotel);
    double locationLatitude =  [[self.locatoionOfHotel objectForKey:@"latitude"] doubleValue];
    double locationLongitude = [[self.locatoionOfHotel objectForKey:@"longitude"] doubleValue];
    NSLog(@"latitude = %f \n longitude = %f",locationLatitude,locationLongitude);
   
    self.mapViewScreen.mapType = MKMapTypeHybrid;
   CLLocationCoordinate2D coordinate = { latitude = locationLatitude, longitude = locationLongitude};
//    
   MKCoordinateSpan span = {latitudeDelta = 0.2, longitudeDelta = 0.2};
  MKCoordinateRegion region = {coordinate, span};
  [self.mapViewScreen setRegion:region];
  MKPointAnnotation* point = [[MKPointAnnotation alloc] init];
   point.coordinate = coordinate;
//
//    point.coordinate = coordinate;
    [self.mapViewScreen addAnnotation:point];
    self.mapViewScreen.showsUserLocation = YES;

    [point release];


    
    

    // Do any additional setup after loading the view from its nib.
}


- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
		   fromLocation:(CLLocation *)oldLocation{


//     double miles = 12.0;
//    double scalingFactor =
//    ABS( cos(2 * M_PI * newLocation.coordinate.latitude /360.0) );
//
//    MKCoordinateSpan span;
//    span.latitudeDelta = miles/69.0;
//    span.longitudeDelta = miles/( scalingFactor*69.0 );
//
//    MKCoordinateRegion region;
//    region.span = span;
//    region.center = newLocation.coordinate;
//
//    [self.m.mapViewScreen setRegion:region animated:YES];
//    self.m.mapViewScreen.showsUserLocation = YES;
//
//








    



    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [_mapViewScreen release];
    
    [super dealloc];
}
@end
