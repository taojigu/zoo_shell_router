//
//  GateViewController.m
//  Runner
//
//  Created by lianjia on 2019/1/15.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "GateViewController.h"
#import <Flutter/Flutter.h>
#import <flutter_boost/FLBFlutterViewContainer.h>
#import "DemoRouter.h"

@interface GateViewController ()

@end

@implementation GateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addPushButton];
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)pushFlutterViewContainer {
    
    [[DemoRouter sharedRouter] openPage:@"tiger" params:@{} animated:YES completion:^(BOOL f){}];
    /*
    FLBFlutterViewContainer *flvc = [[FLBFlutterViewContainer alloc] init];
    [flvc setName:@"lion" params:@{}];
    [self.navigationController pushViewController:flvc animated:YES];
     */
}

- (IBAction)pushFlutterViewController:(id)sender {

    FlutterViewController *flvc = [[FlutterViewController alloc] init];
    [flvc setInitialRoute:@"lion"];
    [self.navigationController pushViewController:flvc animated:YES];
}

- (void)addPushButton {
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 80)];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushFlutterViewContainer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
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
