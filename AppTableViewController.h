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

@interface AppTableViewController : UITableViewController{
    NSArray *appNome;
    NSArray *appImg;
}

@property NSArray *appNome,*appImg;

@end
