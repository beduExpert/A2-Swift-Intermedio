//
//  ViewController.h
//  AppObjC
//
//  Copyright © 2019 Bedu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
- (IBAction)calculate:(id)sender;
@end

