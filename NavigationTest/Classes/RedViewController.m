

#import "RedViewController.h"
#import "BlueViewController.h"

@implementation RedViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
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
	self.title=@"Red View";
	UIBarButtonItem *nextButton = [[UIBarButtonItem alloc]
								  initWithTitle:@"Next"
								   style:UIBarButtonItemStyleBordered
								 target:self
								   action:@selector(nextButton)];
	
	self.navigationItem.rightBarButtonItem=nextButton;
	[nextButton release];
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

-(void) nextButton {
	BlueViewController *blueController = [[[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil] autorelease];
	[self.navigationController pushViewController:blueController animated:YES];
	
}

@end
