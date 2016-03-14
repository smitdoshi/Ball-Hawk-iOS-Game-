//
//  GameOverScreen.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "GameOverScreen.h"

@implementation GameOverScreen
@synthesize scorevalueLabel;
@synthesize gameOverImage,restartImage,homeImage,scoreImage;
@synthesize facebook,twitter,sms,email;

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
        // Set BackGround Image
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background.jpg"]];
        
        gameOverImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Gameover.JPG"]];
        gameOverImage.center=CGPointMake(180.0, 100.0);
        gameOverImage.userInteractionEnabled=YES;
        [self addSubview:gameOverImage];
        
        homeImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Home.JPG"]];
        homeImage.center=CGPointMake(90.0, 500.0);
        homeImage.userInteractionEnabled=YES;
        [self addSubview:homeImage];
        
        restartImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Restart.JPG"]];
        restartImage.center=CGPointMake(280.0, 500.0);
        restartImage.userInteractionEnabled=YES;
        [self addSubview:restartImage];
        
        
        scoreImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"GameOverScore.JPG"]];
        scoreImage.center = CGPointMake(140.0, 250.0);
        [self addSubview:scoreImage];
        
        scorevalueLabel= [[UILabel alloc]initWithFrame:CGRectMake(250.0, 225.0, 70.0, 50.0)];
        scorevalueLabel.textColor= [UIColor whiteColor];
        scorevalueLabel.textAlignment = NSTextAlignmentCenter;
        scorevalueLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:32.0];
        
        [self addSubview:scorevalueLabel];
        [self bringSubviewToFront:scorevalueLabel];
        
#pragma mark - Social Media Buttons
        
        //SOCIAL MEDIA BUTTONS
        
        // FACEBOOK
        facebook = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        facebook.frame = CGRectMake(40.0, 350.0, 60.0, 50.0);
        
        UIImage *facebookImage = [UIImage imageNamed:@"facebook_icon.png"];
        [facebook setBackgroundImage:facebookImage forState:UIControlStateNormal];
        
        
        //TWITTER
        
        twitter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        twitter.frame = CGRectMake(120.0, 350.0, 60.0, 50.0);
        
        
        UIImage *twitterImage = [UIImage imageNamed:@"twitter_icon.png"];
        [twitter setBackgroundImage:twitterImage forState:UIControlStateNormal];
        
        // SMS
        
        sms = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        sms.frame = CGRectMake(200.0, 350.0, 60.0, 50.0);
        
        
        UIImage *smsImage = [UIImage imageNamed:@"SMS.png"];
        [sms setBackgroundImage:smsImage forState:UIControlStateNormal];
        
        // EMAIL
        
        email = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        email.frame = CGRectMake(280.0, 350.0, 60.0, 50.0);
        
        UIImage *emailImage = [UIImage imageNamed:@"Email.png"];
        [email setBackgroundImage:emailImage forState:UIControlStateNormal];
        
        
        [self addSubview:facebook];
        [self addSubview:twitter];
        [self addSubview:sms];
        [self addSubview:email];
        
        
    }
    return self;
}
@end
