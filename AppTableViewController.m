//
//  AppTableViewController.m
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import "AppTableViewController.h"


@interface AppTableViewController (){
    
}

@end

@implementation AppTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Apps *quiz = [[Apps alloc]initWithNome:@"quiz" andCategoria:@"entretenimento" andDesc:@"bla" andImg:@"quiz.png"];
    
    Apps *fontes = [[Apps alloc]initWithNome:@"fontes" andCategoria:@"entretenimento" andDesc:@"bla" andImg:@"fontes.png"];
    Apps *contador = [[Apps alloc]initWithNome:@"contador" andCategoria:@"utilitarios" andDesc:@"bla" andImg:@"contador.png"];
    
    _appTable=[NSMutableArray arrayWithObjects:quiz,fontes,contador,nil];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.appTable count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AppCell" forIndexPath:indexPath];
    
    long row = [indexPath row];
    Apps *app=_appTable[row];

    cell.appImg.image = [UIImage imageNamed:app.img];
    [cell.appNome setText:app.nome];
    [cell.appCat setText:app.categoria];
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"appDetail"]) {
        AppViewController *appsDetail = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        long row =[myIndexPath row];
        
        appsDetail.app=_appTable[row];
    }
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)editTable:(id)sender {

    [self setEditing:YES];

}

@end
