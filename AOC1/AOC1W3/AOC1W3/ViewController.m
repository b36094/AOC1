//
//  ViewController.m
//  AOC1W3
//
//  Created by Nactus Berrilli on 8/21/13.
//  Copyright (c) 2013 Nactus Berrilli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//1.Create a function called Add. This function will take two NSInteger or int types and return the result of an        addition between these two.
-(int)add:(int)par1 par2:(int)par2
{
    int sum = par1+par2;
    return sum;
}
//2.Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
-(BOOL)compare:(NSNumber*)val1 val2:(NSNumber*)val2
{
    if(val1 == val2) {
        return YES;
    }
    else {
        return NO;
    }
}

//3.Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString*)append:(NSString*)str1 str2:(NSString*)str2 {
    NSMutableString *blaString = [[NSMutableString alloc] init];
    
    [blaString appendString:str1];
    [blaString appendString:str2];
    
    return blaString;
}

-(void)viewDidAppear:(BOOL)animated
{
    //4.Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *capStr = [self append:@"this is string one " str2:@"this is string two "];
    [self displayAlertWithString:capStr];
    
    //6.Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int intCap = [self add:3 par2:3];
    
    
    //7.Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    NSNumber *bdNum = [[NSNumber alloc] initWithInt:intCap];
    NSString *mutString = [bdNum stringValue];
    [self displayAlertWithString:mutString];
    //9.Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    NSNumber *num1 = [[NSNumber alloc] initWithInt:3];
    NSNumber *num2 = [[NSNumber alloc] initWithInt:3];
    
    if ([self compare:num1 val2:num2]) {
        
        NSLog(@"yes nums are equal");
        NSMutableString *container = [[NSMutableString alloc] initWithCapacity:2];
        NSString *moreStr = [num1 stringValue];
        NSString *moreStr1 = [num2 stringValue];
        
        [container appendString:moreStr];
        [container appendString:moreStr1];
        
        [self displayAlertWithString:(container)];
    }
    
}

//5.Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
-(void)displayAlertWithString:(NSString*)str
{
    
    NSMutableString *msg = [[NSMutableString alloc] initWithString:@"The value is: "];
    [msg appendString:str];
    UIAlertView *uav = [[UIAlertView alloc] initWithTitle:@"test" message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [uav show];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
