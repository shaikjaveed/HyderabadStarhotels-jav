//
//  DetailedView.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 02/04/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "DetailedView.h"
#import <QuartzCore/QuartzCore.h>
#import "MapView.h"
#import "AppDelegate.h"
#import "WebPage.h"

@interface DetailedView ()

@end

@implementation DetailedView
@synthesize selectedMap,responceData,mystring,new,phoneAlert,taxi,string1,fb2;
//@synthesize cabdetails;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.mapDic = [[NSMutableDictionary alloc]init];

    }
    return self;
}

- (void)viewDidLoad
{

    AppDelegate * shredDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];

    NSLog(@"====     shredDelegate.mylabel.text is:%@",    shredDelegate.mylabel.text
          );

    self.hotelLabel.text =shredDelegate.mylabel.text;

    [super viewDidLoad];

    self.newScreen.layer.cornerRadius=10.0;
    self.newScreen.layer.masksToBounds=YES;
    self.newScreen.image = self.imgFromDifstr;
    // Do any additional setup after loading the view from its nib.
    NSLog(@"lang  %@",self.mapDic);

    NSLog(@"string is %@",mystring);


    self.textView.textColor=[UIColor blackColor];

    self.textView.layer.cornerRadius=10;


    self.mystring= [self.hotelModelObj2.urlarray objectAtIndex:0];;


    self.hotelModelObj2 =[[HotelsModel alloc]init];
    

    NSLog(@"======== hotel obj2%@",mystring);



    

    //     NSString *phoneNumber = mymobileNO.titleLabel.text;
    //    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_hotelLabel release];
 
  
    [_textView release];
 
   
    [_map release];
    [_web release];
    [_newScreen release];
 

    [super dealloc];
}
  
- (IBAction)phoneNum:(id)sender {
    phoneAlert =[[UIAlertView alloc]initWithTitle:@"Call to hotel" message:@"would you like to make a call" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];

        [phoneAlert show];
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:string1]];

//    
//    NSLog(@"%@",string1);
}

- (IBAction)taxiButton:(id)sender {

    taxi=[[UIAlertView alloc]initWithTitle:@"Call a Taxi" message:@"Would You Like to Call a Taxi" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];

    [taxi show];

    
    
//     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:modf(<#double#>, <#double *#>)]];



}

- (IBAction)mapView:(id)sender {

    self.alertMap1 =[[UIAlertView alloc]initWithTitle:@"Route Map" message:@"would you like to View the Route Map" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];

    

    [self.alertMap1 show];
    
}
      
- (IBAction)goToWebPage:(id)sender {

    self.web1 =[[UIAlertView alloc]initWithTitle:@"View Website" message:@"would you like to connect Internet!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"ok", nil];
    [self.web1 show];
    
    

}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    // the user clicked one of the OK/Cancel buttons

    if (actionSheet==self.alertMap1) {

        if (buttonIndex==1)
        {
            MapView *map=[[MapView alloc]initWithNibName:@"MapView" bundle:nil];
            map.langDic=self.mapDic;
            map.hotelName = self.hotelName;
            map.mapView.showsUserLocation = YES;

            [self.navigationController pushViewController:map animated:YES];
        }
    }
    if (actionSheet==self.web1) {


        if (buttonIndex==1) {
            WebPage *webpage_obj = [[WebPage alloc]init];

//            self.string=webpage_obj.activeIndicator;


            mystring =[[NSMutableString alloc]init];
            

            [self.navigationController pushViewController:webpage_obj animated:YES];

            NSLog(@"==========%@",mystring);

            NSString *urlAddress = self.webViewString;
            NSURL *url=[NSURL URLWithString:urlAddress];

            NSURLRequest *request =[NSURLRequest requestWithURL:url];
            [webpage_obj.webPageOutlet loadRequest:request];


        }
    }

  




    
    if (actionSheet==self.phoneAlert) {
        if (buttonIndex==1) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:string1]];
            
//            NSLog(@"hello");

            
        }
        
    }





    if (actionSheet==self.taxi) {

        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:string1]];

//        NSLog(@"%@ javeed",string1);

    }

}

    

- (void)webViewDidFinishLoad:(UIWebView *)webView{


//    [self.string stopAnimating];

}

- (IBAction)facebook:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {

        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook]; 

        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {

                NSLog(@"Cancelled");

            } else

            {
                NSLog(@"Done");
            }

            [controller dismissViewControllerAnimated:YES completion:Nil];
        };
        controller.completionHandler =myBlock;

        //Adding the Text to the facebook post value from iOS
       [controller setInitialText:@"I am at"];

        //Adding the URL to the facebook post value from iOS

//        [controller addURL:[NSURL URLWithString:@"http://www.mobile.safilsunny.com"]];

        //Adding the Image to the facebook post value from iOS

        NSLog(@"images are %@ ",fb2);

//        NSString *fb2string=[[NSString alloc]initWithData:fb2 encoding:NSUTF8StringEncoding];;
//

//
//        UIImage *image = [[UIImage alloc]initWithData:imageName];

        //NSData *charlieSendData = [[charlieImputText stringValue] dataUsingEncoding:NSUTF8StringEncoding]
        //NSString *charlieSendString = [[NSString alloc] initWithData:charlieSendData encoding:NSUTF8StringEncoding];
//NSData *imageData = [NSData dataWithData:UIImagePNGRepresentation(image)];
//        NSData *imageDataString = [NSData dataWithData:UIImagePNGRepresentation(self.fb2)];
        //NSString *content = [[NSString alloc]initWithData:imageDataString encoding:NSUTF8StringEncoding];
//        NSString *content = [[NSString alloc]initWithBytes:[imageDataString bytes] length:[imageDataString length] encoding:NSASCIIStringEncoding];
//
//        NSLog(@" data string is%@",imageDataString);


        [controller addImage:self.fb2];

        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    else{
        NSLog(@"UnAvailable");
    }


}
@end
