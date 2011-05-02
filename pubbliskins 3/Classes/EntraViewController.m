//
//  SecondoViewController.m
//  prova2
//
//  Created by Vincenzo on 14/09/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "EntraViewController.h"


@implementation EntraViewController

#define kLeftMargin				20.0
#define kTopMargin				0.0
#define kRightMargin			20.0
#define kTweenMargin			10.0

#define kTextFieldHeight		30.0


@synthesize myWebView;

- (void)dealloc
{
	myWebView.delegate = nil;
	[myWebView release];
	
	[super dealloc];
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.title = NSLocalizedString(@"Entra", @"");
	
	UITabBarItem *anItem = [[UITabBarItem alloc]
							initWithTitle:@"Entra"
							image:[UIImage imageNamed:@"15-tags.png"] tag:0];
	
	self.tabBarItem=anItem;
	[anItem release];
	
	CGRect webFrame = [[UIScreen mainScreen] applicationFrame];
	webFrame.origin.y += kTopMargin - 20.0;	// leave from the URL input field and its label
	webFrame.size.height += 60.0;
	self.myWebView = [[[UIWebView alloc] initWithFrame:webFrame] autorelease];
	self.myWebView.backgroundColor = [UIColor whiteColor];
	self.myWebView.scalesPageToFit = YES;
	self.myWebView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
	self.myWebView.delegate = self;
	[self.view addSubview: self.myWebView];
	
	/*CGRect textFieldFrame = CGRectMake(kLeftMargin, kTweenMargin,
	 self.view.bounds.size.width - (kLeftMargin * 2.0), kTextFieldHeight);
	 UITextField *urlField = [[UITextField alloc] initWithFrame:textFieldFrame];
	 urlField.borderStyle = UITextBorderStyleBezel;
	 urlField.textColor = [UIColor blackColor];
	 urlField.delegate = self;
	 urlField.placeholder = @"<enter a URL>";
	 urlField.text = @"http://www.apple.com";
	 urlField.backgroundColor = [UIColor whiteColor];
	 urlField.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	 urlField.returnKeyType = UIReturnKeyGo;
	 urlField.keyboardType = UIKeyboardTypeURL;	// this makes the keyboard more friendly for typing URLs
	 urlField.autocapitalizationType = UITextAutocapitalizationTypeNone;	// don't capitalize
	 urlField.autocorrectionType = UITextAutocorrectionTypeNo;	// we don't like autocompletion while typing
	 urlField.clearButtonMode = UITextFieldViewModeAlways;
	 [urlField setAccessibilityLabel:NSLocalizedString(@"URLTextField", @"")];
	 [self.view addSubview:urlField];
	 [urlField release];*/
	
	[self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.pubbliskins.it/index.php"]]];
}

// called after the view controller's view is released and set to nil.
// For example, a memory warning which causes the view to be purged. Not invoked as a result of -dealloc.
// So release any properties that are loaded in viewDidLoad or can be recreated lazily.
//
- (void)viewDidUnload
{
	[super viewDidUnload];
	
	// release and set to nil
	self.myWebView = nil;
}


#pragma mark -
#pragma mark UIViewController delegate methods

- (void)viewWillAppear:(BOOL)animated
{
	self.myWebView.delegate = self;	// setup the delegate as the web view is shown
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.myWebView stopLoading];	// in case the web view is still loading its content
	self.myWebView.delegate = nil;	// disconnect the delegate as the webview is hidden
	[UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	// we support rotation in this view controller
	return YES;
}

// this helps dismiss the keyboard when the "Done" button is clicked
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	[self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[textField text]]]];
	
	return YES;
}


#pragma mark -
#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
	// starting the load, show the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
	// finished loading, hide the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
	// load error, hide the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
	
	// report the error inside the webview
	NSString* errorString = [NSString stringWithFormat:
							 @"<html><center><font size=+5 color='red'>An error occurred:<br>%@</font></center></html>",
							 error.localizedDescription];
	[self.myWebView loadHTMLString:errorString baseURL:nil];
}

@end