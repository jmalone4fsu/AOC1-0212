//
//  AppDelegate.m
//  testApp
//
//  Created by Joseph Malone on 2/1/12.
//  Malone_Joseph_project1.zip
//  Copyright (c) 2012 __aka Papa J__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Create a var of float data type and cast it to an int, using NSLog, output both //
    
    float dailyIncome = 3533.84f;
    float nonpizzaInc = 1003.34f;
    float incomePizza = (dailyIncome - nonpizzaInc);
    int pizzaIntSold = (int)incomePizza/10.50;
    float pizzaFloatSold = incomePizza/10.50;
    NSLog(@"-------- show float data and int data --------");    
    NSLog(@"Total Daily Income=%.2f", dailyIncome);
    NSLog(@"Income from Pizza=%.2f", incomePizza);
    
    // Here I show how casting pizza's sold to an int makes the answer incorrect //
    // To make it work, pizza's sold has to be a float //
    
    NSLog(@"Using Int - Pizza's Sold=%.2d", pizzaIntSold);
    NSLog(@"which is incorrect.. need to use float for correct answer");
    NSLog(@"Using float - Pizza's Sold=%.0f", pizzaFloatSold);
    
    // Perform an AND, OR comparison. Use float, int and bool types //
    
    // Change these to see different results from different order combinations //
    BOOL lgPizza1top = YES;
    BOOL dozWings = YES;
    BOOL lgSub= NO;
    int bought=3;  // how many pizza's did customer order //
    
    // set Prices //
    float special1 = 12.50f; // price for lg1topping pizza plus wings or sub //
    float special2 = 26.00f; // price for 3 lg1topping pizza plus wings or sub //
    float lgPizza = 10.50f;  // price per lg1topping Pizza bought //
    float total;            // total of order //
    
    // If customer ordered Lg 1 topping Pizza, was it paired with anything to make order a Special //
    // Here I am fulfilling the requirements for AND OR comparison and also if, else if checks //
    NSLog(@"-------- AND/OR and If/Else If --------");    
    if (lgPizza1top) {
        if ( (dozWings || lgSub) && (bought<3)) {
            total = special1;
            NSLog(@"Customer ordered Special #1. Charged %.2f", total);
            
        }else if ((dozWings || lgSub) && (bought=3)) {
            total = special2;
            NSLog(@"Customer ordered Special #2. Charged %.2f", total); 
            
        // if not a Special, customer just ordered a number of 1 topping pizzas //    
        }else { 
            total = (lgPizza * bought);
            NSLog(@"Customer just ordered %i Lg Pizza. Charged %.2f", bought, total);
        }
    }

    // Perform a single for loop printing out values to the console //
    NSLog(@"-------- Single Loop --------");
    int i;
    for (i=1; i<=10; i++) {
        NSLog(@"Value of Counter =%i", i);
    }
    
    // Perform a nested loop printing out values to the console //
    NSLog(@"-------- Nested Loop --------");
    NSLog(@"Your pizza will be ready in 2 minutes!");
    int j, k; // j=time in minutes, k=time in seconds //
    for (j=2; j!=0; j--) {
        NSLog(@"minutes =%i", j);
        
        for (k=59; k !=0; k--) {
            if (k % 10 == 0) { // click off every 10 seconds // 
                NSLog(@"seconds =%i", k);            
            }
        }
        
    } NSLog(@"Your pizza is Ready!");
    
    // Perform a while loop that increments an int variable and outputs to the console //
    NSLog(@"-------- While Loop --------");
    int custServed = 1;
    
    while (custServed <= 5) {
        NSLog(@"Now Serving Number: %i", custServed);
        ++custServed; // means the same as custServed++ when on it's own line //
    }
    // End of Project 1 for OBJ-C //
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
