//
//  TableViewExampleViewController.m
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 5/16/14.
//  Copyright (c) 2014 Gytenis Mikulėnas. All rights reserved.
//

#import "TableViewExampleViewController.h"
#import "TableViewExampleCell.h"
#import "ScrollViewExampleViewController.h"
#import "UserObject.h"

@interface TableViewExampleViewController () {
    
    NSArray *_userArray;
}

@end

@implementation TableViewExampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Prepare data
    UserObject *user1 = [UserObject new];
    UserObject *user2 = [UserObject new];
    UserObject *user3 = [UserObject new];
    
    user1.firstName = @"First user";
    user2.firstName = @"Second user";
    user3.firstName = @"Third user";
    
    _userArray = @[user1, user2, user3];
    
    // Render UI
    self.title = GMLocalizedString(@"List screen");
    [_tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

// For hiding blank lines at the bottom of the table view
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    // This will create a "invisible" footer
    return 0.01f;
}

// For hiding blank lines at the bottom of the table view
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    UIView *view = [UIView new];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [TableViewExampleCell heightForCell];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _userArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* strCellIdentifier = kTableViewExampleCellIdentifier;
    
	TableViewExampleCell *cell = [tableView dequeueReusableCellWithIdentifier:strCellIdentifier];
	
	if (cell == nil)
	{
        cell = (TableViewExampleCell *)[self loadViewFromXibOfClass:[TableViewExampleCell class]];
        //cell.noteDetailsView.noteDetailsViewDelegate = self;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
	}
    
    UserObject *user = [_userArray objectAtIndex:indexPath.row];
    
    /*if (!event.logoImage.localFilename && event.logoImage.imageUrl) {
        
        if (_listModel.isLoaded) {
            
            [_listModel downloadImage:event.logoImage withSize:cell.logoImageView.bounds.size atIndexPath:indexPath];
        }
    }*/
    
    [cell renderCellWithUser:user];
	
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.tableView cellForRowAtIndexPath:indexPath];
    
    UserObject *user = (UserObject *)[_userArray objectAtIndex:indexPath.row];
    ScrollViewExampleViewController *detailsVC = [[ScrollViewExampleViewController alloc] initWithUser:user];
    
    [self.navigationController pushViewController:detailsVC animated:YES];
}

@end
