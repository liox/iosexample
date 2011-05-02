//
//  TabAppAppDelegate.h
//  TabApp
//
//  Created by Vincenzo on 10/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//
 
#import <UIKit/UIKit.h>
@class MKMapView;

@interface TabAppAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;


@end
