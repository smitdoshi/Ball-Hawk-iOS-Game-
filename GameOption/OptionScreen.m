//
//  OptionScreen.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "OptionScreen.h"

@implementation OptionScreen
@synthesize optionImage;
@synthesize applauseLabel,backLabel,backgroundsoundLabel;
@synthesize applauseSwitch,backgroundSwitch;

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
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background.jpg"]];
        
        optionImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Options.JPG"]];
        optionImage.center=CGPointMake(180.0, 100.0);
        [self addSubview:optionImage];
        
        backLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 80.0, 70.0, 30.0)];
        
        applauseLabel = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 200.0, 230.0, 40.0)];
        applauseSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(300.0, 200.0, 120.0, 30.0)];
        
        backgroundsoundLabel = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 260.0, 250.0, 40.0)];
        backgroundSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(300.0, 260.0, 120.0, 30.0)];
        
        backLabel.text=@"<Back";
        backLabel.textColor= [UIColor whiteColor];
        backLabel.textAlignment = NSTextAlignmentCenter;
        backLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
        backLabel.userInteractionEnabled=YES;
        
        backgroundsoundLabel.text=@"Background Sound";
        backgroundsoundLabel.textColor= [UIColor whiteColor];
        backgroundsoundLabel.textAlignment = NSTextAlignmentCenter;
        backgroundsoundLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
        
        applauseLabel.text=@"Applause Sound";
        applauseLabel.textColor= [UIColor whiteColor];
        applauseLabel.textAlignment = NSTextAlignmentCenter;
        applauseLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
        
        [self addSubview:backLabel];
        
        [self addSubview:applauseLabel];
        [self addSubview:applauseSwitch];
        [self.applauseSwitch setOn:YES animated:YES];
        
        [self addSubview:backgroundsoundLabel];
        [self addSubview:backgroundSwitch];
        [self.backgroundSwitch setOn:YES animated:YES];
        
        
        
    }
    return self;
}
@end
