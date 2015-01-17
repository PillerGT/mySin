//
//  action.m
//  mySin
//
//  Created by NIkolay Tsygankov on 17.01.15.
//  Copyright (c) 2015 iosdevcourse. All rights reserved.
//

#import "Action.h"

@implementation Action

- (id) initWithText:(NSString *) text
              power:(BOOL) power
                sin: (BOOL) isSin {
    
    self = [super init];
    
    if (self) {
        self.text = text;
        self.power = power;
        self.isSin = isSin;
    }
    return self;
}



#pragma mark NSCoding

- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.text forKey:@"text"];
    [aCoder encodeInteger:self.power forKey:@"power"];
    [aCoder encodeBool:self.isSin forKey:@"isSin"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.isSin = [aDecoder decodeIntegerForKey:@"power"];
        self.power = [aDecoder decodeBoolForKey:@"isSin"];
    }
    return self;
}

@end
