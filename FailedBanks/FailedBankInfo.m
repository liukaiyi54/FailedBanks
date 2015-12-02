//
//  FailedBankInfo.m
//  FailedBanks
//
//  Created by Michael on 15/12/1.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import "FailedBankInfo.h"

@implementation FailedBankInfo

@synthesize uniqueId = _uniqueId;
@synthesize name = _name;
@synthesize city = _city;
@synthesize state = _state;

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name 
                  city:(NSString *)city
                 state:(NSString *)state {
    if (self = [super init]) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.city = city;
        self.state = state;
    }
    return self;
}

@end
