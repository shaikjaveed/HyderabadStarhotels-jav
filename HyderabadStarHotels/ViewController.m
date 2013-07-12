//
//  ViewController.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 28/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "ViewController.h"
#import "DifferentStarHotels.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        
    self.navigationController.navigationBarHidden =YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)viewWillAppear:(BOOL)animated



{



    self.navigationController.navigationBarHidden =YES;
    
    
    
    
    
}

- (IBAction)start:(id)sender {


    DifferentStarHotels *dStarhotels=[[DifferentStarHotels alloc]initWithNibName:@"DifferentStarHotels" bundle:nil];

    [self.navigationController pushViewController:dStarhotels animated:YES];

}

- (IBAction)about:(id)sender {
    
    AboutViewController *about=[[AboutViewController alloc]initWithNibName:@"AboutViewController" bundle:nil];
    about.modalTransitionStyle= UIModalTransitionStyleFlipHorizontal ;
    [self presentViewController:about animated:YES completion:nil];
    
    
//    [self.navigationController pushViewController:about animated:YES];
//    
}
@end
