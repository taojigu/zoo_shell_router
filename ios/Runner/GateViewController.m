//
//  GateViewController.m
//  Runner
//
//  Created by lianjia on 2019/1/15.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "GateViewController.h"
#import <Flutter/Flutter.h>

@interface GateViewController ()

@end

@implementation GateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)pushFlutterViewController:(id)sender {

    FlutterViewController *flvc = [[FlutterViewController alloc] init];
    [flvc setInitialRoute:@"lion"];
    [self.navigationController pushViewController:flvc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
