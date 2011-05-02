//
//  prova2ViewController.h
//  prova2
//
//  Created by Vincenzo on 12/09/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface prova2ViewController : UIViewController <UITextFieldDelegate> {
	UILabel *labelNumero;
	UILabel *labelRuota;
}

-(IBAction)estraiNumero;
-(IBAction)estraiRuota;
@property (nonatomic, retain) IBOutlet UILabel *labelNumero;
@property (nonatomic, retain) IBOutlet UILabel *labelRuota;

@end

