#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	UIBarButtonItem *nextButton;
}
@property (nonatomic,retain) IBOutlet UIBarButtonItem *nextButton;

-(IBAction) nextButton;
@end
