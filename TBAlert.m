//
//  TBAlert.m
//  TeamplateProject
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import "TBAlert.h"

@implementation TBAlert

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)sharedInstance
{
    static TBAlert *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TBAlert alloc] init];
        sharedInstance.alvMessage = [[UIAlertView alloc] init];
        sharedInstance.alvMessage.delegate = self;
    });
    return sharedInstance;
}

/**
 *  showMessage
 *
 *  @param message message
 */
+ (void)showMessage:(NSString *)message
{
    [TBAlert sharedInstance].alvMessage.message = message;
    [[TBAlert sharedInstance].alvMessage show];
}

@end
