//
//  prova2AppDelegate.h
//  prova2
//
//  Created by Vincenzo on 12/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class prova2ViewController;

@interface prova2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    prova2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet prova2ViewController *viewController;

@end

