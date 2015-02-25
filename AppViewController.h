//
//  AppViewController.h
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppTableViewController.h"
#import "AppTableViewCell.h"

@interface AppViewController : UIViewController

@property NSMutableArray *appModel;

@property (weak, nonatomic) IBOutlet UIImageView *appImg;
@property (weak, nonatomic) IBOutlet UILabel *appNome;


//- (IBAction)voltar:(id)sender;
@end
