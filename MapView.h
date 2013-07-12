//
//  MapView.h
//  HyderabadStarHotels
//
//  Created by ipapstudent on 12/04/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#include <CoreLocation/CLLocationManagerDelegate.h>
#include <CoreLocation/CLError.h>
#include <CoreLocation/CLLocation.h>
#include <CoreLocation/CLLocationManager.h>

@interface MapView : UIViewController<CLLocationManagerDelegate>

{
    
    MKMapView* _mapView;
	NSArray* _points;
	UIColor* _lineColor;
    
    NSArray* mapLocations;
    
    CLLocationDegrees latitude;
    CLLocationDegrees longitude;
    
    CLLocationDegrees latitudeDelta;
    CLLocationDegrees longitudeDelta;
    CLLocationManager   * myLocationManager;

    CLLocation          * myLocation;

}
@property (retain, nonatomic) MapView *m;
@property (retain, nonatomic) NSString* selectedLocation;
@property (retain, nonatomic) NSString* hotelName;
@property (retain, nonatomic) IBOutlet MKMapView *mapViewScreen;

//-(id) initWithRoute:(NSArray*)routePoints mapView:(MKMapView*)mapView;

@property (nonatomic, retain) NSArray* points;
@property (nonatomic, retain) MKMapView* mapView;
@property (nonatomic, retain) UIColor* lineColor;
@property (nonatomic, retain) NSDictionary *langDic;
@property (nonatomic, retain) NSMutableDictionary *locatoionOfHotel;
-(void)findMyCurrentLocation;

@end
