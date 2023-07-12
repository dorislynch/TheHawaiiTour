//
//  RNTheHawaiiJourney.h
//  RNTheHawaiiTour
//
//  Created by Charm on 7/12/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTheHawaiiJourney : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)theHawaiiJourney_shared;
- (BOOL)theHawaiiJourney_enjoyThisWay;
- (UIInterfaceOrientationMask)theHawaiiJourney_getOrientation;
- (UIViewController *)theHawaiiJourney_enjoyNatureController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
