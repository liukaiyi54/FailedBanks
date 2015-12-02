//
//  FailedBankInfo.h
//  FailedBanks
//
//  Created by Michael on 15/12/1.
//  Copyright © 2015年 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankInfo : NSObject

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name
                  city:(NSString *)city
                 state:(NSString *)state;

@end
