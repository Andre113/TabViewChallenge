//
//  AppTableViewController.h
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppViewController.h"
#import "AppTableViewCell.h"
#import "Apps.h"

@interface AppTableViewController : UITableViewController

@property NSMutableArray *appTable;
- (IBAction)editTable:(id)sender;

@end
