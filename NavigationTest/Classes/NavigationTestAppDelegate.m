#import "NavigationTestAppDelegate.h"

@implementation NavigationTestAppDelegate

@synthesize window,myNavigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
	[window addSubview:myNavigationController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
	[myNavigationController release];
    [window release];
    [super dealloc];
}


@end
