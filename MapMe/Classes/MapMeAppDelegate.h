//
//  MapMeAppDelegate.h
//  MapMe

//

#import <UIKit/UIKit.h>

@class MapMeViewController;

@interface MapMeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapMeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapMeViewController *viewController;

@end

