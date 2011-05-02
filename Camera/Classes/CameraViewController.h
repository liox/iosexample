//
//  CameraViewController.h
//  Camera
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController 
<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    UIImageView *imageView;
    UIButton *takePictureButton;
    UIButton *selectFromCameraRollButton;
}
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UIButton *takePictureButton;
@property (nonatomic, retain) IBOutlet UIButton *selectFromCameraRollButton;
- (IBAction)getCameraPicture:(id)sender;
- (IBAction)selectExistingPicture;
@end

