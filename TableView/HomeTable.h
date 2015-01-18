//
//  TableInitial.h
//  TableView
//
//  Created by Chiunti on 18/01/15.
//  Copyright (c) 2015 Chiunti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTable : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tblMain;

@end
