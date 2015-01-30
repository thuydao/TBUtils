//
//  TDMBProgressHUDManager.h
//  SCP490
//
//  Created by thuydd on 1/21/15.
//  Copyright (c) 2015 QSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBBaseObject.h"
//#import "MBProgressHUD.h"

#define HIDELOADING [TDMBProgressHUDManager hideLoading];
#define SHOWLOADING [TDMBProgressHUDManager showLoading];


@interface TDMBProgressHUDManager : TBBaseObject

@property (nonatomic, assign) NSInteger countProgress;

+ (void)showLoading;

+ (void)hideLoading;

@end
