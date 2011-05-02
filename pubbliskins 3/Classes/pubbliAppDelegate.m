//
//  prova2AppDelegate.m
//  prova2
//
//  Created by Vincenzo on 12/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "pubbliAppDelegate.h"
#import "PubbliskinsViewController.h"
#import "EntraViewController.h"
#import "ContattiViewController.h"
#import "RootViewController.h"

@implementation pubbliAppDelegate
@synthesize window,viewController,myTabBarController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	UITabBarController *aTabBarController = [[UITabBarController alloc] init];
	self.myTabBarController=aTabBarController;
	
	[aTabBarController release];
	
	
	PubbliskinsViewController *aPrimoViewController =[[PubbliskinsViewController alloc]
											initWithNibName:@"PubbliskinsViewController"
											bundle:nil];
	
	RootViewController *aRootViewController =[[RootViewController alloc]
											  initWithNibName:@"RootViewController"
											  bundle:nil];
	
	UITabBarItem *anItemTopTen = [[UITabBarItem alloc]
							initWithTitle:@"TopTen"
							image:[UIImage imageNamed:@"12-eye.png"] tag:0];
	
	aRootViewController.tabBarItem=anItemTopTen;
	[anItemTopTen release];
	
	
	EntraViewController *aSecondoViewController =[[EntraViewController alloc]
												initWithNibName:@"EntraViewController"
												bundle:nil];
	
	UITabBarItem *anItemEntra = [[UITabBarItem alloc]
							initWithTitle:@"Entra"
							image:[UIImage imageNamed:@"15-tags.png"] tag:0];
	
	aSecondoViewController.tabBarItem=anItemEntra;
	[anItemEntra release];
	
	
	
	ContattiViewController *aprova2ViewController =[[ContattiViewController alloc]
													initWithNibName:@"ContattiViewController"
													bundle:nil];
	
	UITabBarItem *anItemContatti = [[UITabBarItem alloc]
							initWithTitle:@"Contatti"
							image:[UIImage imageNamed:@"08-chat.png"] tag:0];
	
	aprova2ViewController.tabBarItem=anItemContatti;
	[anItemContatti release];	
	
	
	NSArray *tempArray = [[NSArray alloc] initWithObjects:aPrimoViewController,aRootViewController,aSecondoViewController,aprova2ViewController,nil];
	self.myTabBarController.viewControllers=tempArray;
	
	[aPrimoViewController release];
	[aRootViewController release];
	[aSecondoViewController release];
	[aprova2ViewController release];
	[tempArray release];
	

	[window addSubview:myTabBarController.view];
    [window makeKeyAndVisible];
	
	return YES;
	
	
	
    // Override point for customization after application launch.

    // Add the view controller's view to the window and display.
//    [window addSubview:viewController.view];
//    [window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {

	[myTabBarController release];
    [window release];
    [super dealloc];
}


@end
