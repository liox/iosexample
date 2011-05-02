//
//  RootViewController.h
//  Untitled
//
//  Created by vincenzo mastrobattista on 10/10/10.
//  Copyright Terracina 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface RootViewController : UITableViewController {
    DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end
