//
//  action.h
//  mySin
//
//  Created by NIkolay Tsygankov on 17.01.15.
//  Copyright (c) 2015 iosdevcourse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Action : NSObject <NSCoding>

@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) BOOL isSin;
@property (nonatomic, assign) NSInteger power;


@end
