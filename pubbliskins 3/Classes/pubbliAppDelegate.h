//
//  prova2AppDelegate.h
//  prova2
//
//  Created by Vincenzo on 12/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContattiViewController;
			
@interface pubbliAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ContattiViewController *viewController;
	UITabBarController *myTabBarController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ContattiViewController *viewController;
@property (nonatomic, retain) IBOutlet UITabBarController *myTabBarController;


@end

