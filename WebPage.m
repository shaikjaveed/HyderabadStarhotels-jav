//
//  WebPage.m
//  HyderabadStarHotels
//
//  Created by apple on 08/06/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "WebPage.h"

@interface WebPage ()

@end

@implementation WebPage

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


//     [_activeIndicator startAnimating];
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)webpage_objDidStartLoad:(UIWebView *)webView{


//    [self.activeIndicator stopAnimating ];


    
    
    
}

- (BOOL)webView:(UIWebView *)wv shouldStartLoadWithRequest:(NSURLRequest *)rq
{
   [self.activeIndicator startAnimating];
  return YES;


}

-(void)webViewDidStartLoad:(UIWebView *) portal {
    
    [self.activeIndicator startAnimating ];
    
}




- (void)webViewDidFinishLoad:(UIWebView *)webView{


    [self.activeIndicator stopAnimating];
  
    
}

- (void)dealloc {
    [_webPageOutlet release];
    [_activeIndicator release];
    [super dealloc];
}
@end
