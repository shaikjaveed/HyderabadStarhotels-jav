//
//  AboutViewController.m
//  HyderabadStarHotels
//
//  Created by Karanam Kasiratnam on 06/07/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "AboutViewController.h"
#import "ViewController.h"


@interface AboutViewController ()

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   // [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    ViewController *view=[[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    view.modalTransitionStyle= UIModalTransitionStyleFlipHorizontal ;

    [self presentViewController:view animated:YES completion:nil];
    

       
    
    
//    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
