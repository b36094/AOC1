//
//  ViewController.m
//  Andrei_Birsan_AOC1_W2
//
//  Created by Nactus Berrilli on 8/14/13.
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

- (void)viewWillAppear:(BOOL)animated
{
    //1. Change the background color of the view to any color you wish
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //1. Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 5.0f, 320.0f, 20.0f)];
    
    if (title != nil) {
        title.text = @"Objective-C Programming";
        title.textAlignment = NSTextAlignmentCenter; //UITextAlign is depricated
        title.textColor = [UIColor blackColor];
        title.backgroundColor = [UIColor orangeColor];
    }
    
    //2. Create another label that contains the text:"Author" with the text right-justified
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 35.0f, 160.0f, 20.0f)];
    
    if (author != nil) {
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight; //UITextAlign is depricated
        author.textColor = [UIColor redColor];
        author.backgroundColor = [UIColor whiteColor];
    }
    
    //3. Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text is left justified
    
    
    UILabel *authName = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 35.0f, 160.0f, 20.0f)];
    
    if (authName != nil) {
        authName.text = @"HILLEGASS";
        authName.textAlignment = NSTextAlignmentLeft; //UITextAlign is depricated
        authName.textColor = [UIColor blueColor];
        authName.backgroundColor = [UIColor yellowColor];
    }
    
    //4. Create a UILabel on the next line called "Published: ". This text is right justified
    
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 65.0f, 160.0f, 20.0f)];
    
    if (published != nil) {
        published.text = @"Published: ";
        published.textAlignment = NSTextAlignmentRight; //UITextAlign is depricated
        published.textColor = [UIColor cyanColor];
        published.backgroundColor = [UIColor magentaColor];
    }
    
    //5. Create a label next to the Published label and add the text of when the book was published. This text is left justified
    
    UILabel *pubCont = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 65.0f, 160.0f, 20.0f)];
    
    if (pubCont != nil) {
        pubCont.text = @"March 2013";
        pubCont.textAlignment = NSTextAlignmentLeft; //UITextAlign is depricated
        pubCont.textColor = [UIColor colorWithRed:10/255.0f green:4/255.0f blue:6/255.0f alpha:1];
        pubCont.backgroundColor = [UIColor purpleColor];
    }
    
    //6. Create a UILabel with the text "Summary". This text is left justified
    
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 95.0f, 160.0f, 20.0f)];
    
    if (summary != nil) {
        summary.text = @"Summary: ";
        summary.textAlignment = NSTextAlignmentLeft; //UITextAlign is depricated
        summary.textColor = [UIColor colorWithRed:3/255.0f green:4/255.0f blue:20/255.0f alpha:1];
        summary.backgroundColor = [UIColor greenColor];
    }
    
    //7. Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines
    
    UILabel *summCont = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 125.0f, 320.0f, 170.0f)];
    
    if (summCont != nil) {
        summCont.text = @"Objective C, written by Aaron Hillegass, one of the most authoritative voices in the iOS and Cocoa community, is an introductory book to Apple's programming language, utilized by developers across the world to write iPhone, iPad and Mac Computer applications. ";
        summCont.textAlignment = NSTextAlignmentCenter; //UITextAlign is depricated
        summCont.textColor = [UIColor colorWithRed:3/255.0f green:10/255.0f blue:3/255.0f alpha:1];
        summCont.backgroundColor = [UIColor blueColor];
        summCont.lineBreakMode = NSLineBreakByCharWrapping;
        summCont.numberOfLines = 0;
        
    }
    
    //1. Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    NSArray *nsArr = [[NSArray alloc ] initWithObjects:@"and objective-c ", @"programming ", @"Xcode, ", @"iPhone, ", @"iPad ", nil];
    
    //2. Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and".
    
    NSMutableString *nsMtArr = [[NSMutableString alloc] initWithCapacity:10];
    
    
    for (int i = 0; i < nsArr.count; i++) {
        [nsMtArr insertString:nsArr[i] atIndex:0];
        
        
    }
        
    NSLog(@"%@", nsMtArr);
   
    //3. Create a label with the text "List of Items" and add it to the parent view. Make sure the text is left justified.
    
    UILabel *listItem = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 310.0f, 160.0f, 20.0f)];
    
    if (listItem != nil) {
        listItem.text = @"List of Items";
        listItem.textAlignment = NSTextAlignmentLeft; //UITextAlign is depricated
        listItem.textColor = [UIColor colorWithRed:140/255.0f green:80/255.0f blue:60/255.0f alpha:1];
        listItem.backgroundColor = [UIColor colorWithRed:90/255.0f green:140/255.0f blue:20/255.0f alpha:1];
        
        
    }
    
    //4. Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    UILabel *bla = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 350.0f, 320.0f, 70.0f)];
    
    if (bla != nil) {
        
        bla.text = nsMtArr;
        bla.textAlignment = NSTextAlignmentCenter; //UITextAlign is depricated
        bla.textColor = [UIColor colorWithRed:10/255.0f green:150/255.0f blue:60/255.0f alpha:1];
        bla.backgroundColor = [UIColor colorWithRed:30/255.0f green:100/255.0f blue:120/255.0f alpha:1];
        bla.lineBreakMode = NSLineBreakByCharWrapping;
        bla.numberOfLines = 3;
        
    }
    // Call UILabel elements
    [super viewWillAppear:animated];
    [self.view addSubview:title];
    [self.view addSubview:author];
    [self.view addSubview:authName];
    [self.view addSubview:published];
    [self.view addSubview:pubCont];
    [self.view addSubview:summary];
    [self.view addSubview:summCont];
    [self.view addSubview:listItem];
    [self.view addSubview:bla];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
