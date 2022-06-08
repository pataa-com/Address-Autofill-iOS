//
//  ViewController.m
//  AddressAutofillSDKSampleObjc
//
//  Created by JaiPrakash on 08/06/22.
//

#import "ViewController.h"

@interface ViewController () <PataaAutoFillDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.pataaAutoFillView initializeSDKWithKey:@"YOUR_API_KEY" withAppPrefix:@"APP_PREFIX"];
    [self.pataaAutoFillView setDelegate:self];
}


- (void)didReceivedPataaDetails:(nullable PAPataaDetail *)pataaDetails withError:(nullable NSError *)error {
    
}


@end
