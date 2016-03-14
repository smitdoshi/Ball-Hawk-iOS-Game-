//
//  GameLogo.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "GameLogo.h"

@implementation GameLogo
@synthesize gameLogoImage,backgroundImage;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype) initWithFrame:(CGRect)frame
{
    self= [super initWithFrame:frame];
    if(self)
    {
        
        // Set BackGround Image.
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background.JPG"]];
        
        // Set the GameLogo
        
        gameLogoImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"GameLogo.JPG"]];
        gameLogoImage.center = CGPointMake(180.0, 330.0);
        gameLogoImage.alpha = 0.01; //Fadding Effect will be given Later
        gameLogoImage.userInteractionEnabled= YES;
        
        [self addSubview:gameLogoImage];
    }
    return self;
}
@end
