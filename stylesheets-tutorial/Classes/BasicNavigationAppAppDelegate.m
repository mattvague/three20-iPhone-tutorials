#import "BasicNavigationAppAppDelegate.h"
#import "RootViewController.h"
#import "Three20/Three20.h"
#import "BNDefaultStyleSheet.h"

@implementation BasicNavigationAppAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch 
	
	[TTStyleSheet setGlobalStyleSheet:[[[BNDefaultStyleSheet alloc]   
										init] autorelease]];
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

