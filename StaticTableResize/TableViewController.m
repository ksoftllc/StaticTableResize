//
//  TableViewController.m
//  StaticTableResize
//
//  Created by Chuck Krutsinger on 6/4/15.
//  Copyright (c) 2015 Countermind Ventures, LLC. All rights reserved.
//

#import "TableViewController.h"


@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 100.0f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}

#pragma mark - Table view data source


@end
