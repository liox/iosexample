#import <UIKit/UIKit.h>

#define kImageURL   @"http://1.bp.blogspot.com/_Qj9dd--Eq-M/SzsmdkmpbII/AAAAAAAAADc/9olHenB-DVA/S660/Spiaggia-al-Tramonto-Print-C12041673.jpg"
#define kTextURL    @"http://www.artinmovement.org/annapaolaLeop.txt"

typedef enum RequestTypes {
    kRequestTypeImage,
    kRequestTypeText,
} RequestType;

@interface WebWorkViewController : UIViewController {
    UIActivityIndicatorView *spinner;
    UIImageView             *imageView;
    UITextView              *textView;
    
    NSMutableData           *receivedData;
    RequestType             requestType;
}
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *spinner;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) NSMutableData *receivedData;

- (void)clear;

- (IBAction)getImageUsingNSData;
- (IBAction)getImageSynchronously;
- (IBAction)getImageAsynchronously;

- (IBAction)getTextUsingNSString;
- (IBAction)getTextSynchronously;
- (IBAction)getTextAsynchronously;
@end