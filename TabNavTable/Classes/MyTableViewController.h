

#import <UIKit/UIKit.h>


@interface MyTableViewController : UITableViewController {
	NSMutableArray *tableDataList;
	UINavigationController *navCont;
}

@property (nonatomic,retain) NSMutableArray *tableDataList;
@property (nonatomic,retain) IBOutlet UINavigationController *navCont;
@end
