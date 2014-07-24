//
//  ViewController.m
//  SimpleAuthorization
//
//  Created by 能登 要 on 2014/06/27.
//  Copyright (c) 2014年 com.irimasu. All rights reserved.
//

#import "ViewController.h"
#import "IDPAuthorizationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    BOOL isAvailable = [UIApplication sharedApplication].enabledRemoteNotificationTypes & (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert) ? YES : NO;
    NSLog(@"isAvailable=%@",isAvailable ? @"YES" : @"NO" );
    
    [IDPAuthorizationViewController authorizationWithAuthorizationType:IDPAuthorizationViewControllerAuthorizationTypeTwitter option:nil
                                                        viewController:self completion:^(NSError *error, IDPAuthorizationViewControllerAuthorizationStatus authorizationStatus) {
        
        switch (authorizationStatus) {
            case IDPAuthorizationViewControllerAuthorizationContinuePushNotificationRegistration:
                [[UIApplication sharedApplication] registerForRemoteNotificationTypes:UIRemoteNotificationTypeAlert];
                break;
            case IDPAuthorizationViewControllerAuthorizationStatusAuthorized:
                
                break;
            case IDPAuthorizationViewControllerAuthorizationStatusDenied:
                
                break;
            case IDPAuthorizationViewControllerAuthorizationStatusRestricted:
                
                break;
            case IDPAuthorizationViewControllerAuthorizationStatusCancel:
                break;
            case IDPAuthorizationViewControllerAuthorizationNoAvailable:
                break;
            case IDPAuthorizationViewControllerAuthorizationStatusFailure:
                break;
            default:
                break;
        }
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
