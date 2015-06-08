//
//  TableViewController.m
//  StaticTableResize
//
//  Created by Chuck Krutsinger on 6/4/15.
//  Copyright (c) 2015 Countermind Ventures, LLC. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (weak, nonatomic) IBOutlet UITextView *tv1;
@property (weak, nonatomic) IBOutlet UITextView *tv2;
@property (weak, nonatomic) IBOutlet UITextView *tv3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;


@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.toggle.transform = CGAffineTransformMakeScale(0.70, 0.70); 
    
    self.tableView.estimatedRowHeight = 100.0f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    //these two lines not needed on iphone, but they fix a layout problem on ipad
    // that causes the rows with disclosure indicators to not size correctly
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}

#pragma mark - Table view data source

- (IBAction)updateContents:(id)sender {
    static int counter = 0;
    
    if (counter++ % 2 == 0)
    {
        self.tv1.text = @"Something short";
        self.tv2.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
        self.tv3.text = @"{ \"barcode\":\n"
        "        { \"barcodeName\":\"BraceletDataMatrix\",\n"
        "            \"regexTransforms\": [\n"
        "                                [\n"
        "                                 \"^(\\d*)(\\d{9})$\",\n"
        "                                 \"\\1\"\n"
        "                                 ]\n"
        "                                ]\n"
        "        }\n"
        "    }\n";
    }
    else
    {
        self.tv2.text = @"Something short";
        [self.tableView beginUpdates];
        [self.tableView endUpdates];

        self.tv1.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
        [self.tableView beginUpdates];
        [self.tableView endUpdates];
        self.tv3.text = @"{ \"barcode\":\n"
        "        { \"barcodeName\":\"BraceletDataMatrix\",\n"
        "            \"regexTransforms\": [\n"
        "                                [\n"
        "                                 \"^(\\d*)(\\d{9})$\",\n"
        "                                 \"\\1\"\n"
        "                                 ]\n"
        "                                ]\n"
        "        }\n"
        "    }\n";
    }
    
    //these two lines animate the change in row sizes
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}

@end
