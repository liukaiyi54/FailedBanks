//
//  FailedBanksListViewController.m
//  FailedBanks
//
//  Created by Michael on 15/12/1.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import "FailedBanksListViewController.h"
#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"

@interface FailedBanksListViewController ()

@end

@implementation FailedBanksListViewController

@synthesize failedBankInfos = _failedBankInfos;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.failedBankInfos = [FailedBankDatabase database].failedBankInfos;
    self.title = @"Failed Banks";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _failedBankInfos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * CellIdentifiler = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifiler];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifiler];
    }
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", info.city, info.state];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FailedBanksDetailViewController *vc = [[FailedBanksDetailViewController alloc] init];
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    vc.uniqueId = info.uniqueId;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
