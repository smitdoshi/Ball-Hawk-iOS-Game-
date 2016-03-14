//
//  GamePlayScreen.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "GamePlayScreen.h"

@implementation GamePlayScreen
@synthesize horizonballImage,ranballImage,scoresLabel,livesLabel;

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
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"gameFrame.JPG"]];
        
        [self createHeader];
        [self createHorizontalBall];
        [self createRandomDirectionBall];
    }
    return self;
}

-(void) createHeader
{
    
    //Counters for Score and Lives
    scoreCount=0;
    livesCount=5;
    
    //SCORE PART
    
    CGRect labelScorePos = CGRectMake(15.0, 30.0, 240.0, 30.0);
    scoresLabel = [[UILabel alloc] initWithFrame:labelScorePos];
    scoresLabel.text=[NSString stringWithFormat:@"SCORE: %d",scoreCount];
    
    scoresLabel.numberOfLines = 4;
    scoresLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
    scoresLabel.textColor= [UIColor whiteColor];
    
    //LIVES PART
    
    CGRect labelLivesPos = CGRectMake(155.0, 30.0, 240.0, 30.0);
    livesLabel = [[UILabel alloc] initWithFrame:labelLivesPos];
    
    livesLabel.text=[NSString stringWithFormat:@"LIVES: %d",livesCount];
    livesLabel.numberOfLines = 4;
    livesLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
    livesLabel.textColor= [UIColor whiteColor];
    
    // Add to the View
    
    [self  addSubview:scoresLabel];
    [self addSubview:livesLabel];
}

-(void) createHorizontalBall
{
    horizonballImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ball1.png"]];
    horizonballImage.center = CGPointMake(180.0, 345.0);
    horizonballImage.userInteractionEnabled = YES;
    
    [self addSubview:horizonballImage];
}

//Ball 2 Creation

-(void) createRandomDirectionBall
{
    ranballImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ball2.png"]];
    ranballImage.center=CGPointMake(140.0, 170.0);
    
    [self addSubview:ranballImage];
}


@end
