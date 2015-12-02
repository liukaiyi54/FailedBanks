//
//  FailedBankDatabase.h
//  FailedBanks
//
//  Created by Michael on 15/12/1.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "/usr/include/sqlite3.h"

@interface FailedBankDatabase : NSObject {
    sqlite3 *_database;
}

+ (FailedBankDatabase *)database;
- (NSArray *)failedBankInfos;

@end
