//
//  FailedBanksDetailViewController.m
//  FailedBanks
//
//  Created by Michael on 15/12/2.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import "FailedBanksDetailViewController.h"
#import "FailedBankDatabase.h"

@interface FailedBanksDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (weak, nonatomic) IBOutlet UILabel *zipLabel;
@property (weak, nonatomic) IBOutlet UILabel *closedLabel;
@property (weak, nonatomic) IBOutlet UILabel *updateLabel;

@end

@implementation FailedBanksDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    FailedBankDetails *details = [[FailedBankDatabase database] failedBankDetails:_uniqueId];
    if (details) {
        self.nameLabel.text = details.name;
        self.cityLabel.text = details.city;
        self.stateLabel.text = details.state;
        self.zipLabel.text = [NSString stringWithFormat:@"%d", details.zip];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMMM dd, yyyy"];
        self.closedLabel.text = [formatter stringFromDate:details.closeDate];
        self.updateLabel.text = [formatter stringFromDate:details.updatedDate];
    }
}

@end