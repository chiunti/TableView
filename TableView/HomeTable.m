//
//  TableInitial.m
//  TableView
//
//  Created by Chiunti on 18/01/15.
//  Copyright (c) 2015 Chiunti. All rights reserved.
//

#import "HomeTable.h"
#import "cellOaxaca.h"


NSMutableArray *maNames;
NSMutableArray *maImgs;
NSMutableArray *maRole;
NSMutableArray *maAge;

@interface HomeTable ()

@end

@implementation HomeTable

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initcontroller];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initcontroller
{
    maNames =[NSMutableArray arrayWithObjects: @"uno", @"dos",nil];
    maImgs  =[NSMutableArray arrayWithObjects: @"number-1.jpg", @"number-2.jpg",nil];
    maRole  =[NSMutableArray arrayWithObjects: @"primero", @"segundo",nil];
    maAge   =[NSMutableArray arrayWithObjects: @"1", @"2",nil];
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellOaxaca");
    static NSString *CellIdentifier = @"cellOaxaca";
    
    cellOaxaca *cell = (cellOaxaca *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellOaxaca alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblName.text       = maNames[indexPath.row];
    cell.lblRole.text       = maRole[indexPath.row];
    cell.lblAge.text        = maAge[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
