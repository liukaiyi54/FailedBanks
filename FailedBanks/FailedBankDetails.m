//
//  FailedBankDetails.m
//  FailedBanks
//
//  Created by Michael on 15/12/2.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import "FailedBankDetails.h"

@implementation FailedBankDetails
@synthesize uniqueId = _uniqueId;
@synthesize name = _name;
@synthesize city = _city;
@synthesize state = _state;
@synthesize zip = _zip;
@synthesize closeDate = _closeDate;
@synthesize updatedDate = _updatedDate;

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name
                  city:(NSString *)city
                 state:(NSString *)state
                   zip:(int)zip
             closeDate:(NSDate *)closeDate
           updatedDate:(NSDate *)updatedDate {
    if (self = [super init]) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.city = city;
        self.state = state;
        self.zip = zip;
        self.closeDate = closeDate;
        self.updatedDate = updatedDate;
    }
    return self;
}

@end
