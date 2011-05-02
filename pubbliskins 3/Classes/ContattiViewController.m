//
//  prova2ViewController.m
//  prova2
//
//  Created by Vincenzo on 12/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "ContattiViewController.h"

@implementation ContattiViewController

// importiamo i componenti di cui abbiamo definito le property
@synthesize labelNumero;
@synthesize labelRuota;

// azione richiamata alla pressione del bottone
-(IBAction)estraiNumero{
	// leggiamo la stringa contenuta nella UITextField (il nome del- l'utente)

	NSString *numero = [[NSString alloc] initWithFormat:@"%d", random() % 90 + 1];
		
	labelNumero.text = [[NSString alloc] initWithFormat:@"%@",numero];
	labelNumero.hidden = NO;

}

-(IBAction)estraiRuota{
	NSArray *array = [[NSArray alloc] initWithObjects:@"Bari", @"Cagliari", @"Firenze", @"Genova", @"Milano", @"Napoli", @"Nazionale", @"Palermo", @"Roma", @"Torino", @"Venezia", nil];
	
	int numRuota=random() % 11;
	NSString * ruota = [array objectAtIndex: numRuota];
	
	labelRuota.text = [[NSString alloc] initWithFormat:@"%@",ruota];
	labelRuota.hidden = NO;
}

-(IBAction)call{
	NSURL *phoneNumberURL = [NSURL URLWithString:@"tel://3296936994"];
	[[UIApplication sharedApplication] openURL:phoneNumberURL];
	NSLog(@"test chiamata");
	
	/*NSString *phoneStr = [NSString stringWithFormat:@"tel:%@",[self.contactDetails objectForKey:@"phone"]];
	NSString *escaped = [phoneStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:escaped]];*/
	
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
	[textField resignFirstResponder]; 
	return YES; 
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
	[textField resignFirstResponder]; 
	return YES; 
}


/*-(BOOL)textFieldDidEndEditing:(UITextField *)textField{
	[textField resignFirstResponder]; 
	return YES; 
}*/


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	UITabBarItem *anItem = [[UITabBarItem alloc]
							initWithTitle:@"Contatti"
							image:[UIImage imageNamed:@"08-chat.png"] tag:0];
	
	self.tabBarItem=anItem;
	[anItem release];
	
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[labelNumero dealloc]; 
	[labelRuota dealloc]; 
    [super dealloc];
}

@end
