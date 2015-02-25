//
//  AppTableViewCell.h
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *appImg;
@property (weak, nonatomic) IBOutlet UILabel *appCat;

@property (weak, nonatomic) IBOutlet UILabel *appNome;


@end
