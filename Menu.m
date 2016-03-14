//
//  Menu.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "Menu.h"

@implementation Menu
@synthesize menuImage,playImage,optionImage,helpImage,scoreImage;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background.JPG"]]; //Set background Image
        
        // Menu Image on Background
        menuImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Menu.JPG"]];
        menuImage.center=CGPointMake(220.0, 120.0);
        [self addSubview:menuImage];
        
        // Play Image on Background
        playImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Play.JPG"]];
        playImage.center=CGPointMake(185.0, 220.0);
        playImage.userInteractionEnabled=YES;
        [self addSubview:playImage];
        
        // Option Image on Background
        optionImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Options.JPG"]];
        optionImage.center=CGPointMake(185.0, 320.0);
        optionImage.userInteractionEnabled=YES;
        [self addSubview:optionImage];
        
        // Help Image on Background
        helpImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Help.JPG"]];
        helpImage.center=CGPointMake(185.0, 420.0);
        helpImage.userInteractionEnabled=YES;
        [self addSubview:helpImage];
        
        // Score Image on Background
        scoreImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Score.JPG"]];
        scoreImage.center=CGPointMake(185.0, 520.0);
        scoreImage.userInteractionEnabled=YES;
        [self addSubview:scoreImage];
        
        
        
    }
    return self;
}

@end
