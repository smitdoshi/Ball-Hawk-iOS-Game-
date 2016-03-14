//
//  GamePlayScreen.h
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamePlayScreen : UIView
{
    
    UILabel *scoresLabel;
    UILabel *livesLabel;
    
    //Score Count
    int scoreCount;
    int livesCount;
    
    //Ball1 image
    UIImageView *horizonballImage;
    
    //Ball2 image
    UIImageView *ranballImage;
    
}

@property(strong,nonatomic) UIImageView *horizonballImage,*ranballImage;

@property(strong,nonatomic) UILabel *scoresLabel,*livesLabel;

@end
