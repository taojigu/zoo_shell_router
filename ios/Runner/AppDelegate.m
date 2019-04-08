#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import <flutter_boost/FlutterBoostPlugin.h>
#import "GateViewController.h"
#import "DemoRouter.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    GateViewController *gvc = [[GateViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:gvc];
    self.window.rootViewController = navi;
    
    DemoRouter *dr = [[DemoRouter alloc] init];
    
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:dr
                                                        onStart:^(FlutterViewController *fvc) {
                                                            
                                                        }];
  [GeneratedPluginRegistrant registerWithRegistry:self];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
