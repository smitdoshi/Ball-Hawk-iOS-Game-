//
//  GameLogo.h
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameLogo : UIView
{
    UIImageView *backgroundImage;
    
    UIImageView *gameLogoImage;
}

@property(strong,nonatomic) UIImageView *backgroundImage,*gameLogoImage;
@end
