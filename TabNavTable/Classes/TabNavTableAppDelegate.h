
#import <UIKit/UIKit.h>


@interface TabNavTableAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITabBarController *myCont;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *myCont;


@end

