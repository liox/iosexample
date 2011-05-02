

#import "TabNavTableAppDelegate.h"

@implementation TabNavTableAppDelegate

@synthesize window,myCont;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[window addSubview:myCont.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
