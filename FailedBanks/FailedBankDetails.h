//
//  FailedBankDetails.h
//  FailedBanks
//
//  Created by Michael on 15/12/2.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankDetails : NSObject

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, assign) int zip;
@property (nonatomic, strong) NSDate *closeDate;
@property (nonatomic, strong) NSDate *updatedDate;

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name
                  city:(NSString *)city
                 state:(NSString *)state
                   zip:(int)zip
             closeDate:(NSDate *)closeDate
           updatedDate:(NSDate *)updatedDate;

@end
