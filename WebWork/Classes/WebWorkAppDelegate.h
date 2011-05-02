//
//  WebWorkAppDelegate.h
//  WebWork
//

#import <UIKit/UIKit.h>

@class WebWorkViewController;

@interface WebWorkAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WebWorkViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WebWorkViewController *viewController;

@end

