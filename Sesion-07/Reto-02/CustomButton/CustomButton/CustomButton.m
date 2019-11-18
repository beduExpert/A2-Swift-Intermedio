//
//  CustomButton.m
//  
//  BEDU
//
#import "CustomButton.h"

@implementation CustomButton

+(void)setup : (UIButton *)btn {
    btn.backgroundColor = [UIColor colorWithRed: 0.906 green: 0.298 blue: 0.235 alpha: 1];
    btn.layer.cornerRadius = 5;
    btn.clipsToBounds=YES;
}

@end
