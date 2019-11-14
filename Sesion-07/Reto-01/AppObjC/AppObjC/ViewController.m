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

- (IBAction)calculate:(id)sender {
  int value1 = _textField1.text.intValue;
  int value2 = _textField2.text.intValue;
  int result = value1 + value2;
  _label.text = [[NSString alloc] initWithFormat: @"%d", result];
  
  if (value1 == value2) {
    _label.textColor = [UIColor greenColor];
  } else {
    _label.textColor = [UIColor redColor];
  }
}
@end
