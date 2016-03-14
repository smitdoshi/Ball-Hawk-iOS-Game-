//
//  HelpScreen.h
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpScreen : UIView
{
    UIImageView *instructionImage;
    UILabel *backLabel;
    UIImageView *tapImage;
}
@property(strong,nonatomic) UIImageView *instructionImage,*tapImage;
@property(strong,nonatomic)UILabel *backLabel;

@end
