//
//  OptionScreen.h
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionScreen : UIView
{
    UIImageView *optionImage;
    
    UILabel *backLabel;
    UILabel *applauseLabel;
    UILabel *backgroundsoundLabel;
    
    UISwitch *applauseSwitch;
    UISwitch *backgroundSwitch;
    
}
@property(strong,nonatomic) UIImageView *optionImage;

@property(strong,nonatomic) UILabel *backLabel;
@property(strong,nonatomic) UILabel *applauseLabel;
@property(strong,nonatomic) UILabel *backgroundsoundLabel;

@property(strong,nonatomic) UISwitch *applauseSwitch;
@property(strong,nonatomic) UISwitch *backgroundSwitch;

@end
