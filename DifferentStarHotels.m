//
//  DifferentStarHotels.m
//  HyderabadStarHotels
//
//  Created by ipapstudent on 28/03/13.
//  Copyright (c) 2013 ipapstudent. All rights reserved.
//

#import "DifferentStarHotels.h"

#import "AppDelegate.h"
#import "HotelsModel.h"


@interface DifferentStarHotels ()

@end

@implementation DifferentStarHotels
@synthesize customCell;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.img = [[UIImage alloc]init];


//    UIImage *image = [UIImage imageNamed: @""];


    self.navigationController.navigationBarHidden =NO;
    
//  
//    UIImage *image1 = [UIImage imageNamed:@"close-dark.png"];
//      [UIButton setFrame:CGRectMake(0, 0, image1.size.width, image1.size.height)];
//    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:image1 forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
////    [self.navigationItem setLeftBarButtonItem:addButton];
//     UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];


//
//    UIImage *addImage = [UIImage imageNamed:@"close-dark.png"];
//    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [addButton setFrame:CGRectMake(0, 0, addImage.size.width, addImage.size.height)];
//    [addButton setBackgroundImage:addImage forState:UIControlStateNormal];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:addButton];
//    [self.navigationItem setLeftBarButtonItem:barButtonItem];

//
//    UIImage *buttonback = [[UIImage imageNamed:@"close-dark.png"]
//                           resizableImageWithCapInsets:UIEdgeInsetsMake(0, 22, 5, 0)];
//
//    
//    [[UIBarButtonItem appearance]
//     setBackButtonBackgroundImage:buttonback forState:UIControlStateNormal
//     barMetrics:UIBarMetricsDefault];
//
//


    
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    
//
//    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];


//    self.view.backgroundColor= [UIColor colorWithPatternImage:[UIImage imageNamed:@"javsave.png"]];


    self.navigationItem.title=@"Find a Hotel";

    self.tableView.layer.cornerRadius = 5;

    self.hotelModelobj =[[HotelsModel alloc]init];
    
        
    
//    
//    self.headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
//  self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
//    [_headerView addSubview:_imageView];
//   self.labelView= [[UILabel alloc] initWithFrame:CGRectMake(0, 0,320, 60)];
//    [_headerView addSubview:_labelView];
//    self.tableView.tableHeaderView = _headerView;
//    
   
     
    
    
    
    
    
    
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    NSLog(@"%d",[self.hotelModelobj.hotels count]);
    return [self.hotelModelobj.hotels count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
     NSLog(@"%@",[self.hotelModelobj.hotels objectAtIndex:section]);
    return [[self.hotelModelobj.hotels objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // static NSString *CellIdentifier = @"Cell";
//    customCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    if (customCell == nil) {
//       UITableViewCell *customCell = [[[NSBundle mainBundle]loadNibNamed:@"Customcell" owner:self options:nil]objectAtIndex:0];
//    }
//    

//    
   
    // Configure the cell...

                         //HERE WE ARE CREATING A CUSTOM CELL//
    
    
     static NSString *simpleTableIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
        cell.layer.cornerRadius =10;
        
       
    }
                        // HERE WE ARE PLACING IMAGES ON CUSTOM CELL//
  
    cell.img.image = [UIImage imageNamed:[[self.hotelModelobj.allhotelImages objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
        cell.img.layer.masksToBounds=YES;
    cell.img.layer.cornerRadius=4.0;

//   NSLog(@"array names are %@",[[hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row]);
    
                      // HERE DISPLAYING DIFFERENT HOTEL NAMES ON CUSTOM CELL//
    
    NSString *nameString = [[self.hotelModelobj.hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
    cell.name.text =nameString;
    
  
    
    
    cell.backgroundColor=[UIColor clearColor];

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;


//    self.myLabel.text=nameString;



//    NSLog(@" my label is%@",myLabel);

//    self.detailViewController.hotelLabel.text=myLabel;

   
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    AppDelegate * sharedDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];



   _detailViewController = [[DetailedView alloc] initWithNibName:@"DetailedView" bundle:nil];

    // Pass the selected object to the new view controller.

    self.myString99 =[[self.hotelModelobj.hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];

    sharedDelegate.mylabel.text=self.myString99;

    NSLog(@"==== shared delegate lable text is: %@",sharedDelegate.mylabel.text);
//
//
//    NSLog(@"%@ hotel name is ",_detailViewController.hotelLabel.text);
//

    self.UrlString = [[self.hotelModelobj.allhotelArray objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];


    self.detailViewController.webViewString=self.UrlString;

    NSLog(@"+++ %@ nsurll string is",self.UrlString);


//    detailViewController.hotelLabel.text=self.myString99;

    self.detailViewController.mystring =[_urlArray objectAtIndex:indexPath.row];
//    detailViewController.hotelLabel.text  = [[self.hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
    self.detailViewController.hotelName = [[self.hotelModelobj.hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
//    detailViewController.hotelLabel.text=[[self.hotels objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];

    self.fbi = [UIImage imageNamed:[[self.hotelModelobj.allhotelImages objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    NSLog(@"  images are%@",self.fbi);


    self.detailViewController.fb2=self.fbi;
    

    self.img = [UIImage imageNamed:[[self.hotelModelobj.allhotelImages objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    self.detailViewController.imgFromDifstr = self.img;



    NSString *bundlePath=[[NSBundle mainBundle] pathForResource:@"latituteandlongitude" ofType:@"plist"];
    NSString *docpath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];

    self.filePath =[docpath stringByAppendingPathComponent:@"latituteandlongitude.plist"];

    NSMutableDictionary *locations =[[NSMutableDictionary alloc]initWithContentsOfFile:self.filePath];

    NSLog(@" latitudes are %@",locations);

    NSArray *allkey=[locations allKeys];
    NSLog(@"all keys%@",allkey);



    //   detailViewController.mapDic=[latitudes valueForKey:[allkey objectAtIndex:indexPath.section]];

    _detailViewController.mapDic=locations;

    


    [self.navigationController pushViewController:_detailViewController animated:YES];
    
    [self.detailViewController release];
    
//   self.detailViewController.string1 = [self.hotelModelobj.mobileNum objectAtIndex:indexPath.row];

    
//    NSMutableArray *taxinumbers =[[NSMutableArray alloc]init];

//
//    self.taxiNumbers=[[NSMutableArray alloc]initWithObjects:@"tel://+914044224422",@"tel://+9104043434343",@"tel://+914044224422",@"tel://04044224422",@"tel://04044224422",@"tel://04030222277",@"tel://+9104043434343",@"tel://04044224422",@"tel://+9104043434343",@"tel://+914044224422",@"tel://04044224422", nil];

    self.detailViewController.string2=[self.hotelModelobj.taxiMobileNumbers objectAtIndex:indexPath.row];



    self.detailViewController.string1 = [[self.hotelModelobj.mobileNum objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];

//    NSLog(@"mobile numers are %@",[[self.hotelModelobj.mobileNum objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
//



    
   
    
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    if (section==0) {
        UIImage *myImage = [UIImage imageNamed:@"shaded.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
        imageView.frame = CGRectMake(0,0,320,20);
        
        return imageView;

    }
    if (section==1) {
        UIImage *myImage = [UIImage imageNamed:@"shaded.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
        imageView.frame = CGRectMake(0,0,320,20);
        
        return imageView;
        
    }
	   
    if (section==2) {
        UIImage *myImage = [UIImage imageNamed:@"shaded.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
        imageView.frame = CGRectMake(5,0,320,20);
        
        return imageView;
        

}


}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 28;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 74;
}



@end
