//
//  TBAlert.h
//  TeamplateProject
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TBCustomAlert(msg) [[[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show]
 //[TBAlert showMessage:msg]//


@interface TBAlert : NSObject <UIAlertViewDelegate>

@property (nonatomic, retain) UIAlertView *alvMessage;

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)sharedInstance;

/**
 *  showMessage
 *
 *  @param message message
 */
+ (void)showMessage:(NSString *)message;

@end
