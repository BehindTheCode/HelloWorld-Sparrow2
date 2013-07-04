//
//  AppDelegate.m
//  Hello World
//
//  Created by Andreas Wålm on 2012-10-31.
//

#import "AppDelegate.h"
#import "Game.h"

@implementation AppDelegate

// --- c functions ---

void onUncaughtException(NSException *exception)
{
    NSLog(@"uncaught exception: %@", exception.description);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSSetUncaughtExceptionHandler(&onUncaughtException);
    
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    _Window = [[UIWindow alloc] initWithFrame:screenBounds];
    
    _ViewController = [[SPViewController alloc] init];
    
    BOOL isPad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
   
    _ViewController.multitouchEnabled = YES;
    _ViewController.preferredFramesPerSecond = 60;
    
    [_ViewController startWithRoot:[Game class] supportHighResolutions:YES doubleOnPad:YES];
    
    
    [_Window setRootViewController:_ViewController];
    [_Window makeKeyAndVisible];

    
    
    return YES;
}

@end
