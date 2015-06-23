//
//  TableViewController.h
//  StaticTableResize
//
//  Created by Chuck Krutsinger on 6/4/15.
//  Copyright (c) 2015 Countermind Ventures, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextView *lastTextView;
@property (weak, nonatomic) IBOutlet UITextView *firstTextView;

@end
