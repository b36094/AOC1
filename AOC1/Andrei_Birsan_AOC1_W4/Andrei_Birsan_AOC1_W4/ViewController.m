//
//  ViewController.m
//  Andrei_Birsan_AOC1_W4
//
//  Created by Nactus Berrilli on 8/27/13.
//  Copyright (c) 2013 Nactus Berrilli. All rights reserved.
//
#define BUTTON_ONE 1
#define BUTTON_TWO 2
#define BUTTON_THREE 3
#define BUTTON_FOUR 4
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}
- (void)viewDidAppear:(BOOL)animated
{
    //1.1 Create a UILabel near the top of your screen with the text "Username:" in it.
    UILabel *usrnm = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 17.0f, 100.0f, 25.0f)];
    
    if (usrnm !=nil) {
        usrnm.text = @"Username: ";
        [self.view addSubview:usrnm];
    }
    
    
    //1.2 Create a UITextField to the right of the username label
    pass = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 20.0f, 160.0f, 27.0f)];
    if (pass != nil) {
        
        pass.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:pass];
    }
    
    //1.3 Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    UIButton *someButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (someButton != nil) {
        someButton.frame = CGRectMake(210.0f, 60.0f, 60.0f, 30.0f);
        [someButton setTitle:@"Login" forState:UIControlStateNormal];
        someButton.tag = BUTTON_ONE;
        [self.view addSubview:someButton];
        
        [someButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    //1.4 Create another UILabel beneath with the default text "Please Enter Username".
    info = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 25.0f)];
    
    if (info !=nil) {
        info.text = @"Please Enter Username";
        [info setTextAlignment:NSTextAlignmentCenter];
        [self.view addSubview:info];
    }
    
    //1.5 Add a target to the UIButton to call a function called onClick when the user presses the Login button.
    // ------> refer to the tag created in the someButton obj.
    
    //1.6 If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in". <-----> refer to the onClick function
    
    //1.7 Hint: NSString has a property called length that tells you how many characters are in the string. ---> onClick fn
    
    //2.1 Create a UIButton using the rounded rectangle type. Give this button any color you wish.
    //UITextFiel's button
    
    UIButton *textBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (textBtn != nil) {
        
        textBtn.frame = CGRectMake(10.0f, 210.0f, 100.0f, 25.0f);
        textBtn.tag = BUTTON_TWO;
        //2.2 Add the text "Show Date" to the button
        [textBtn setTitle:@"Show Date" forState:UIControlStateNormal];
        
        //2.3 Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
        [textBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:textBtn];
    }
    
    //2.4 Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information. <-------->refere to onClick function
    
    //3.1 Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
    UIButton *aboutBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (aboutBtn != nil) {
        
        aboutBtn.frame = CGRectMake(10.0f, 280.0f, 25.0f, 25.0f);
        aboutBtn.tag = BUTTON_THREE;
        [aboutBtn setTitle:@"Info" forState:UIControlStateNormal];
        [aboutBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside]; // <--- target 
        [self.view addSubview:aboutBtn];
    }
    
    //3.2 Create a UILabel beneath it that contains no initial text.
    bottom = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 330.0f, 320.0f, 100.0f)];
    
    if (bottom !=nil) {
        bottom.text = @"";
        [bottom setTextAlignment:NSTextAlignmentCenter];
        bottom.lineBreakMode = NSLineBreakByWordWrapping;
        bottom.numberOfLines = 0;
        [self.view addSubview:bottom];
    }
    
    //3.3 Hook up an action to the info button to have it call the onClick handler you created earlier. <-----> refer to 3.1 for the target
    
    //3.4 When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name. <---> refer to onClick function last else if statement 
}

//function onClick starts here
- (void)onClick:(UIButton*)button
{
    //login button activation logic
    if(button.tag == BUTTON_ONE) {
        
        //get the length of the inputed string
        int varLength = [pass.text length];
        
        //if the  length is 0 display error
        if (varLength == 0) {
            info.text = @"Username cannot be empty!";
        }
        
        //if not display the user and the message
        else {
            NSString *msgComplete = [NSString stringWithFormat:@"User: %@ has been logged in",pass.text];
            info.text = msgComplete;
            
        }
    }
    //date button activation logic
    else if (button.tag == BUTTON_TWO) {
        NSDate *currentDate = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
            [dateFormatter setDateStyle:NSDateFormatterLongStyle];
        }
        
        NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
        if (timeFormatter != nil) {
            [timeFormatter setTimeStyle:NSDateFormatterFullStyle];
        }
        NSString *cTime = [timeFormatter stringFromDate:currentDate];
        NSString *cDate = [dateFormatter stringFromDate:currentDate];
        NSMutableString *dateCombo = [[NSMutableString alloc] init];
        if (dateCombo != nil) {
            [dateCombo appendString:cDate];
            [dateCombo appendString:@"   "];
            [dateCombo appendString:cTime];
        }
        
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateCombo delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        if (dateAlert != nil) {
            [dateAlert show];
        }
        
    }
    
    //info button activation logic
    else if (button.tag == BUTTON_THREE) {
        bottom.text = @"This application was created by: Andrei Birsan";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
