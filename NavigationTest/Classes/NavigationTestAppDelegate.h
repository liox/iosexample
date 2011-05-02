#import <UIKit/UIKit.h>

@interface NavigationTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *myNavigationController;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *myNavigationController;
@end

