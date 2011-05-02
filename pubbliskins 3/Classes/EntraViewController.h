//
//  SecondoViewController.h
//  prova2
//
//  Created by Vincenzo on 14/09/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
@interface EntraViewController : UIViewController {

}

@end
*/

@interface EntraViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>
{
	UIWebView *myWebView;
}

@property (nonatomic, retain) UIWebView	*myWebView;

@end
