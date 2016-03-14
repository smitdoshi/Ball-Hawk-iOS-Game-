//
//  HelpScreen.m
//  BallHawk
//
//  Created by SMIT N.DOSHI on 02/11/14.
//  Copyright (c) 2014 SMIT N.DOSHI. All rights reserved.
//

#import "HelpScreen.h"

@implementation HelpScreen
@synthesize instructionImage,backLabel,tapImage;
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
        
        instructionImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Instruction.JPG"]];
        instructionImage.center=CGPointMake(190.0, 265.0);
        
        backLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 80.0, 70.0, 30.0)];
        backLabel.text=@"<Back";
        backLabel.textColor= [UIColor whiteColor];
        backLabel.textAlignment = NSTextAlignmentCenter;
        backLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18.0];
        backLabel.userInteractionEnabled=YES;
        
        tapImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tap.png"]];
        tapImage.center=CGPointMake(180.0, 495.0);
        
        [self addSubview:instructionImage];
        [self addSubview:tapImage];
        [self bringSubviewToFront:tapImage];
        [self addSubview:backLabel];
        
    }
    return self;
}
@end
