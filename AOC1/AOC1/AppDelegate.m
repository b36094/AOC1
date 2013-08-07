//
//  AppDelegate.m
//  AOC1
//
//  Student Name: Andrei Birsan
//  Date: 8/7/13
//  Class: AOC1

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Create a variable using the float data type and another var of type bool
    float floatVar = 3.5f;
    bool truth = YES;
    
    // Using NSLog, cast the float to an int, output both the initial float and the int
    NSLog(@"The float value is: %.2f, and the int variable is: %d",floatVar, (int)floatVar);
    
    // Perform and AND, OR comparison, use float, int and bool var types
    if (((int)floatVar > 0) && ((int)floatVar < 10)) {
        NSLog(@"Low amo!");
        
    }
    else if (((int)floatVar == 3) || (truth == YES)) {
        NSLog(@"Low amo and low life!");
    }
    else {
        NSLog(@"Keep playing!");
    }
    
    
    // Perform a for loop
    for (int x = 0; x < 10; x++) {
        NSLog(@"Round %d out", x);
    }
    
    // Perform a nested loop
    for (int count = 0; count < 10; count++) {
        NSLog(@" %d enemy/s down ...!", count);
        
        for (int j = 10; j > 0; j--) {
            NSLog(@"%d rounds left ...!", j);
        }
    }
    
    // Perform a while loop
    int cnt = 0;
    while (cnt < 10) {
        NSLog(@"%d bullet/s missed ...!", cnt);
        cnt ++;
    }
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
   
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
