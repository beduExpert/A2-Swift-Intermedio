//
//  ViewController.m
//  AppObjC
//
//  Copyright © 2019 Bedu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}


- (IBAction)showMessage:(id)sender {
  _label.text = [[NSString alloc] initWithString: @"Hello world"];
}
@end
