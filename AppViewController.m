//
//  AppViewController.m
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import "AppViewController.h"


@interface AppViewController ()
@end

@implementation AppViewController

@synthesize app;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    _appNome.text = app.nome;
    _appCat.text = app.categoria;
    [_appImg setImage:[UIImage imageNamed:app.img]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
