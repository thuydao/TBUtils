//
//  TBBaseObject.m
//  TeamplateProject
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import "TBBaseObject.h"

@implementation TBBaseObject

#pragma mark - private

/**
 *  init
 *
 *  @return instancetype
 */
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return(self);
}


/**
 *  initialize
 *  Overwrite to customize init object
 */
- (void)initialize
{
    
}

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)sharedInstance
{
    static TBBaseObject *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TBBaseObject alloc] init];
    });
    return sharedInstance;
}

@end
