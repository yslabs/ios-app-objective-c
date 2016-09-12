//
//  ViewController.m
//  ProjectDemoViewController
//
//  Created by yugasa labs on 09/09/16.
//  Copyright © 2016 yugasa labs. All rights reserved.
//

#import "ViewController.h"
#import "LeagueFeeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //for hiding  the navigationbar
    self.navigationController.navigationBar.hidden = YES;
    
    //for setting the backgroung color/image
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"backgroundImg"]]];
    
    
    //for adding the image
    UIImage * hashTagLogoImg = [UIImage imageNamed:@"dashlogo_hashTag"];
    UIImageView * hashTagLogo = [[UIImageView alloc]init];
    [hashTagLogo setFrame:CGRectMake(self.view.frame.size.width/2-hashTagLogoImg.size.width/2,self.view.frame.size.height/2-hashTagLogoImg.size.height*4+hashTagLogoImg.size.height*9/10,hashTagLogoImg.size.width, hashTagLogoImg.size.height)];
    [hashTagLogo setImage:hashTagLogoImg];
    [self.view addSubview:hashTagLogo];
    
    
    //for adding the image
    UIImage * optionsImgIcon = [UIImage imageNamed:@"optionsImg"];
    UIImageView * optionsImg = [[UIImageView alloc]init];
    [optionsImg setFrame:CGRectMake(self.view.frame.size.width/2-optionsImgIcon.size.width*11+optionsImgIcon.size.width/2,self.view.frame.size.height/2-optionsImgIcon.size.height*24,optionsImgIcon.size.width, optionsImgIcon.size.height)];
    [optionsImg setImage:optionsImgIcon];
    [self.view addSubview:optionsImg];
    
    
    //for adding the image
    UIImage * cubeLogoImage = [UIImage imageNamed:@"logo1"];
    UIImageView * cubeLogo = [[UIImageView alloc]init];
    [cubeLogo setFrame:CGRectMake(self.view.frame.size.width-cubeLogoImage.size.width-cubeLogoImage.size.width/2,self.view.frame.size.height/2-cubeLogoImage.size.height*10+cubeLogoImage.size.height/5, cubeLogoImage.size.width, cubeLogoImage.size.height)];
    [cubeLogo setImage:cubeLogoImage];
    [self.view addSubview:cubeLogo];
    
    
    //for adding the button
    UIButton *playBrainGameFeeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    playBrainGameFeeButton.frame = CGRectMake(self.view.frame.size.width-110*1.1,self.view.frame.origin.y+22*4,110,22);
    [playBrainGameFeeButton setBackgroundColor:[UIColor colorWithRed:10.0/255.0 green:66.0/255.0 blue:139/255.0 alpha:1.0]];
    [playBrainGameFeeButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [playBrainGameFeeButton setTitle:@">  Play Brain Game free" forState:UIControlStateNormal];
    [playBrainGameFeeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [playBrainGameFeeButton.titleLabel setFont:[UIFont fontWithName:@"ArialRoundedMTBold" size:9]];
    playBrainGameFeeButton.layer.cornerRadius = 1;
    playBrainGameFeeButton.clipsToBounds = YES;
    [self.view addSubview:playBrainGameFeeButton];
    
    
    //to call the method for adding the view
    CGFloat leagueViewWidth=700;
    CGFloat leagueViewHeight=170;
    UIView* leagueView=[self addViewWithFrame:CGRectMake(self.view.frame.size.width/2-leagueViewWidth/2 ,self.view.frame.size.height/2-leagueViewHeight*3/2, leagueViewWidth,leagueViewHeight) backGround:[UIColor colorWithRed:10.0/255.0 green:66.0/255.0 blue:139.0/255.0 alpha:0.6]];
    [leagueView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [leagueView.layer setBorderWidth:1];
    [leagueView setTag:1000];
    [self.view addSubview:leagueView];
    
     //to call the method for adding the view
    CGFloat eventViewWidth=700;
    CGFloat eventViewHeight=170;
    UIView* eventView=[self addViewWithFrame:CGRectMake(self.view.frame.size.width/2-eventViewWidth/2 ,self.view.frame.size.height/2-eventViewHeight/15, eventViewWidth,eventViewHeight) backGround:[UIColor colorWithRed:10.0/255.0 green:66.0/255.0 blue:139.0/255.0 alpha:0.6]];
    [eventView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [eventView.layer setBorderWidth:1];
    [eventView setTag:1001];
    [self.view addSubview:eventView];
    
    
     //to call the method for adding the view
    CGFloat baselineViewWidth=700;
    CGFloat baselineViewHeight=170;
    UIView* baselineView=[self addViewWithFrame:CGRectMake(self.view.frame.size.width/2-baselineViewWidth/2 ,self.view.frame.size.height/2+baselineViewHeight*1.35, baselineViewWidth,baselineViewHeight) backGround:[UIColor colorWithRed:10.0/255.0 green:66.0/255.0 blue:139.0/255.0 alpha:0.6]];
    [baselineView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [baselineView.layer setBorderWidth:1];
    [baselineView setTag:1002];
    [self.view addSubview:baselineView];
    
    
    
    // for adding the image
    UIImage * athleteImageIcon = [UIImage imageNamed:@"athleteImg"];
    UIImageView * athleteImage = [[UIImageView alloc]init];
    [athleteImage setFrame:CGRectMake(leagueView.frame.size.width-athleteImageIcon.size.width*4.7,leagueView.frame.size.height/2-athleteImageIcon.size.height/2, athleteImageIcon.size.width, athleteImageIcon.size.height)];
    [athleteImage setImage:athleteImageIcon];
    [leagueView addSubview:athleteImage];
    
 
    //for adding the image
    UIImage * eventImageIcon = [UIImage imageNamed:@"eventImg"];
    UIImageView * eventImage = [[UIImageView alloc]init];
    [eventImage setFrame:CGRectMake(eventView.frame.size.width-eventImageIcon.size.width*1.1,eventView.frame.size.height/2-eventImageIcon.size.height/2, eventImageIcon.size.width, eventImageIcon.size.height)];
    [eventImage setImage:eventImageIcon];
    [eventView addSubview:eventImage];
    
 
    // //to call the method for adding the view
    CGFloat eventTestCountViewWidth=145;
    CGFloat eventTestCountViewHeight=145;
    UIView* eventTestCountView=[self addViewWithFrame:CGRectMake(eventView.frame.size.width-eventTestCountViewWidth*5+eventTestCountViewWidth*2/8 ,eventView.frame.size.height/2-eventTestCountViewHeight/2, eventTestCountViewWidth,eventTestCountViewHeight) backGround:[UIColor whiteColor]] ;
    [eventTestCountView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [eventTestCountView.layer setBorderWidth:1];
    [eventTestCountView setTag:1004];
    eventTestCountView.layer.cornerRadius = 72;
    eventTestCountView.layer.masksToBounds = YES;
    [eventView addSubview:eventTestCountView];
    
    
     //to call the method for adding the view
    CGFloat leagueTeastCountViewWidth=145;
    CGFloat leagueTeastCountViewHeight=145;
    UIView* leagueTeastCountView=[self addViewWithFrame:CGRectMake(leagueView.frame.size.width-leagueTeastCountViewWidth*1.1,leagueView.frame.size.height/2-leagueTeastCountViewHeight/2, leagueTeastCountViewWidth,leagueTeastCountViewHeight) backGround:[UIColor whiteColor]] ;
    [leagueTeastCountView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [leagueTeastCountView.layer setBorderWidth:1];
    [leagueTeastCountView setTag:1005];
    leagueTeastCountView.layer.cornerRadius = 72;
    leagueTeastCountView.layer.masksToBounds = YES;
    [leagueView addSubview:leagueTeastCountView];
    
    
    // //to call the method for adding the view
    CGFloat baselineTestCountViewWidth=145;
    CGFloat baselineTestCountViewHeight=145;
    UIView* baselineTestCountView=[self addViewWithFrame:CGRectMake(baselineView.frame.size.width-baselineTestCountViewWidth*1.1,baselineView.frame.size.height/2-baselineTestCountViewHeight/2, baselineTestCountViewWidth,baselineTestCountViewHeight) backGround:[UIColor whiteColor]] ;
    [baselineTestCountView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [baselineTestCountView.layer setBorderWidth:1];
    [baselineTestCountView setTag:1006];
    baselineTestCountView.layer.cornerRadius = 72;
    baselineTestCountView.layer.masksToBounds = YES;
    [baselineView addSubview:baselineTestCountView];
    
  
    //for adding the image
    UIImage * trophyImageIcon = [UIImage imageNamed:@"leagueImg"];
    UIImageView * trophyImage = [[UIImageView alloc]init];
    [trophyImage setFrame:CGRectMake(baselineView.frame.size.width-trophyImageIcon.size.width*4.7,baselineView.frame.size.height/2-trophyImageIcon.size.height/2, trophyImageIcon.size.width, trophyImageIcon.size.height)];
    [trophyImage setImage:trophyImageIcon];
    [baselineView addSubview:trophyImage];
    
    
    //to call the method for adding the label
    UILabel* leagueLabel = [self addLabelWithFrame:CGRectMake(leagueView.frame.size.width/2-200/2,leagueView.frame.size.height/2-65/2,200,65) text:@"League" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor whiteColor] textAlign:NSTextAlignmentLeft];
    [leagueView addSubview:leagueLabel];
    
    
    //to call the method for adding the label
    UILabel* eventLabel = [self addLabelWithFrame:CGRectMake(eventView.frame.size.width/2-200/2,eventView.frame.size.height/2-65/2,200,65) text:@"Event" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor whiteColor] textAlign:NSTextAlignmentLeft];
    [eventView addSubview:eventLabel];
    
    
    ////to call the method for adding the label
    UILabel* baselineLabel = [self addLabelWithFrame:CGRectMake(baselineView.frame.size.width/2-250/2,baselineView.frame.size.height/2-65/2,250,65) text:@"Baseline" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor whiteColor] textAlign:NSTextAlignmentLeft];
    [baselineView addSubview:baselineLabel];
    
    
    ////to call the method for adding the label
    UILabel* leagueTeastCountLabel = [self addLabelWithFrame:CGRectMake(leagueTeastCountView.frame.size.width/2-80/2,leagueTeastCountView.frame.size.height/2-65/2,80,65) text:@"02" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor colorWithRed:33.0/255.0 green:65.0/255.0 blue:101.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    [leagueTeastCountView addSubview:leagueTeastCountLabel];
    
    
    ////to call the method for adding the label
    UILabel* eventTestCountLabel = [self addLabelWithFrame:CGRectMake(eventTestCountView.frame.size.width/2-80/2,eventTestCountView.frame.size.height/2-65/2,80,65) text:@"04" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor colorWithRed:33.0/255.0 green:65.0/255.0 blue:101.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    [eventTestCountView addSubview:eventTestCountLabel];
    
    ////to call the method for adding the label
    UILabel* baselineTestCountLabel = [self addLabelWithFrame:CGRectMake(baselineTestCountView.frame.size.width/2-80/2,baselineTestCountView.frame.size.height/2-65/2,80,65) text:@"25" font:[UIFont fontWithName:@"Roboto-Regular" size:60] textColor:[UIColor colorWithRed:33.0/255.0 green:65.0/255.0 blue:101.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    [baselineTestCountView addSubview:baselineTestCountLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

//method for adding tapGesture
- (void)handleTap:(UITapGestureRecognizer *)gestureRecognizer
{
    LeagueFeeViewController * leaguefee = [LeagueFeeViewController new];
    [self.navigationController pushViewController:leaguefee animated:NO];
  
}

/*
     * Method to perform an action on UIButton
 */
-(IBAction)buttonAction:(UIButton *)sender
{
  
}

/*
     * Method for adding UILabel
 */
-(UILabel*)addLabelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont*)font textColor:(UIColor* )textColor textAlign:(NSTextAlignment)textAlign
{
    UILabel *headingL = [[UILabel alloc]init];
    [headingL setFrame:frame];
    [headingL setText:text];
    [headingL setFont:font];
    [headingL setTextAlignment:NSTextAlignmentLeft];
    [headingL setTextColor:textColor];
    return headingL;
    
}

/*
     * Method for adding UIView
 */
-(UIView*)addViewWithFrame:(CGRect)frame backGround:(UIColor *)bgColor{
    UIView *loginview =[[UIView alloc]init];
    [loginview setFrame:frame];
    [loginview setBackgroundColor:bgColor];
    loginview.layer.borderWidth = 5;
    loginview.layer.borderColor = UIColor.blackColor.CGColor;
    
    UITapGestureRecognizer *gesRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
   // gesRecognizer.delegate=self;
    [loginview addGestureRecognizer:gesRecognizer];

    return loginview;
    
}

@end
