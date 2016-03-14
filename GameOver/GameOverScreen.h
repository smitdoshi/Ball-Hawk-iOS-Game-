//
//  GameOverScreen.h
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameOverScreen : UIView
{
    UIImageView *gameOverImage;
    UIImageView *restartImage;
    UIImageView *homeImage;
    
    UIButton *facebook;
    UIButton *twitter;
    UIButton *sms;
    UIButton *email;
    
    UIImageView *scoreImage;
    UILabel *scorevalueLabel;
}
@property(strong,nonatomic) UILabel *scorevalueLabel;
@property(strong,nonatomic) UIImageView *gameOverImage,*restartImage,*homeImage,*scoreImage;
@property(strong,nonatomic) UIButton *facebook,*twitter,*sms,*email;

@end
