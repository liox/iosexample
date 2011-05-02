//
//  MapMeAppDelegate.m
//  MapMe
//

#import "MapMeAppDelegate.h"
#import "MapMeViewController.h"

@implementation MapMeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
