//
//  LeagueFeeViewController.m
//  Kepish
//
//  Created by yugasa labs on 07/09/16.
//  Copyright © 2016 yugasa labs. All rights reserved.
//

#import "LeagueFeeViewController.h"

@interface LeagueFeeViewController ()

@end

@implementation LeagueFeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]]];
    
    
    UIImage * cubeLogoImage = [UIImage imageNamed:@"logo (1)"];
    UIImageView * cubeLogo = [[UIImageView alloc]init];
    [cubeLogo setFrame:CGRectMake(self.view.frame.size.width-cubeLogoImage.size.width-cubeLogoImage.size.width/2, cubeLogoImage.size.height, cubeLogoImage.size.width, cubeLogoImage.size.height)];
    [cubeLogo setImage:cubeLogoImage];
    [self.view addSubview:cubeLogo];
    
    
    UIImage * kepishLogoImage = [UIImage imageNamed:@"logo_kepish"];
    UIImageView * kepishLogo = [[UIImageView alloc]init];
    [kepishLogo setFrame:CGRectMake(self.view.frame.size.width/2-kepishLogoImage.size.width/2,kepishLogoImage.size.height-kepishLogoImage.size.height/3,kepishLogoImage.size.width, kepishLogoImage.size.height)];
    [kepishLogo setImage:kepishLogoImage];
    [self.view addSubview:kepishLogo];
    
    
    
    UIButton *playBrainGameFeeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    playBrainGameFeeButton.frame = CGRectMake(self.view.frame.size.width-110*1.1,self.view.frame.origin.y+22*5,110,22);
    [playBrainGameFeeButton setBackgroundColor:[UIColor colorWithRed:10.0/255.0 green:66.0/255.0 blue:139/255.0 alpha:1.0]];
    [self.play_BrainGameFee addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [playBrainGameFeeButton setTitle:@">  Play Brain Game free" forState:UIControlStateNormal];
    [playBrainGameFeeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [playBrainGameFeeButton.titleLabel setFont:[UIFont fontWithName:@"ArialRoundedMTBold" size:9]];
    playBrainGameFeeButton.layer.cornerRadius = 1;
    playBrainGameFeeButton.clipsToBounds = YES;
    [self.view addSubview:playBrainGameFeeButton];
    
    
    CGFloat kapishFee_leagueFeeViewWidth=700;
    CGFloat kapishFee_leagueFeeViewHeight=400;
    UIView* kapishFee_leagueFeeView=[self addViewWithFrame:CGRectMake(self.view.frame.size.width/2-kapishFee_leagueFeeViewWidth/2 ,self.view.frame.size.height/2-kapishFee_leagueFeeViewHeight/2+kapishFee_leagueFeeViewHeight/10, kapishFee_leagueFeeViewWidth,kapishFee_leagueFeeViewHeight) backGround:[UIColor colorWithRed:223/255.0 green:224/255.0 blue:225/255.0 alpha:1.0]] ;
    [kapishFee_leagueFeeView.layer setBorderColor:[UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:1.0].CGColor];
    [kapishFee_leagueFeeView.layer setBorderWidth:1];
    [kapishFee_leagueFeeView setTag:100];
    [self.view addSubview:kapishFee_leagueFeeView];
    
    
    UILabel* kepishFeeLeagueFeeLabel = [self addLabelWithFrame:CGRectMake(kapishFee_leagueFeeView.frame.size.width/2-400/2 +400/10,kapishFee_leagueFeeView.frame.size.height/2-400/2+40/2,400,40) text:@"Kepish Fee & League Fee" font:[UIFont fontWithName:@"Roboto-Bold" size:28] textColor:[UIColor colorWithRed:111.0/255.0 green:111.0/255.0 blue:111.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    [kapishFee_leagueFeeView addSubview:kepishFeeLeagueFeeLabel];
    
    
    CGFloat LeagueFeeViewWidth=640;
    CGFloat LeagueFeeViewHeight=50;
    UIView* LeagueFeeView=[self addViewWithFrame:CGRectMake(kapishFee_leagueFeeView.frame.size.width/2-LeagueFeeViewWidth/2 ,kapishFee_leagueFeeView.frame.size.height/2-LeagueFeeViewHeight*2-50/4, LeagueFeeViewWidth,LeagueFeeViewHeight) backGround:[UIColor whiteColor]];
    [LeagueFeeView.layer setBorderColor:[UIColor colorWithRed:249/255.0 green:250/255.0 blue:250/255.0 alpha:1.0].CGColor];
    [LeagueFeeView.layer setBorderWidth:1];
    [LeagueFeeView setTag:101];
    [kapishFee_leagueFeeView addSubview:LeagueFeeView];
    
    
    UIImage * leagueFeePrimaryImage = [UIImage imageNamed:@"League_logo"];
    UIImageView * leagueFeePrimaryImg = [[UIImageView alloc]init];
    [leagueFeePrimaryImg setFrame:CGRectMake(LeagueFeeView.frame.size.width/2-leagueFeePrimaryImage.size.width*2+leagueFeePrimaryImage.size.width/10 ,LeagueFeeView.frame.size.height/2-leagueFeePrimaryImage.size.height/2,leagueFeePrimaryImage.size.width, leagueFeePrimaryImage.size.height)];
    [leagueFeePrimaryImg setImage:leagueFeePrimaryImage];
    [LeagueFeeView addSubview:leagueFeePrimaryImg];
    
    CGFloat kepishFeeLabelwidth = 170;
    UILabel* kepishFeeLabel = [self addLabelWithFrame:CGRectMake(LeagueFeeView.frame.size.width/2-kepishFeeLabelwidth/2+50/5,LeagueFeeView.frame.size.height/2-50/2,kepishFeeLabelwidth,50) text:@"League Fee" font:[UIFont fontWithName:@"Roboto-Bold" size:28] textColor:[UIColor colorWithRed:58.0/255.0 green:124.0/255.0 blue:180.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    [LeagueFeeView addSubview:kepishFeeLabel];
    
    
    
    
    UIImage * leagueFeeSecondryImage = [UIImage imageNamed:@"League_logo"];
    UIImageView * leagueFeeSecondryImg = [[UIImageView alloc]init];
    [leagueFeeSecondryImg setFrame:CGRectMake(LeagueFeeView.frame.size.width/2+leagueFeeSecondryImage.size.width- leagueFeeSecondryImage.size.width/6,LeagueFeeView.frame.size.height/2-leagueFeeSecondryImage.size.height/2,leagueFeeSecondryImage.size.width, leagueFeeSecondryImage.size.height)];
    [leagueFeeSecondryImg setImage:leagueFeeSecondryImage];
    [LeagueFeeView addSubview:leagueFeeSecondryImg];
    
    
    
    CGFloat unlimitedBrainGameViewWidth=640;
    CGFloat unlimitedBrainGameViewHeight=60;
    UIView* unlimitedBrainGameView=[self addViewWithFrame:CGRectMake(kapishFee_leagueFeeView.frame.size.width/2-unlimitedBrainGameViewWidth/2 ,kapishFee_leagueFeeView.frame.size.height/2-unlimitedBrainGameViewHeight+unlimitedBrainGameViewHeight/20, unlimitedBrainGameViewWidth,unlimitedBrainGameViewHeight) backGround:[UIColor colorWithRed:58.0/255.0 green:124.0/255.0 blue:180.0/255.0 alpha:1.0]];
    [unlimitedBrainGameView.layer setBorderColor:[UIColor colorWithRed:82.0/255.0 green:122.0/255.0 blue:179.0/255.0 alpha:1.0].CGColor];
    [unlimitedBrainGameView.layer setBorderWidth:1];
    [unlimitedBrainGameView setTag:102];
    [kapishFee_leagueFeeView addSubview:unlimitedBrainGameView];
    
    
    CGFloat unlimitedBrainGamesLabelwidth = 430;
    UILabel* unlimitedBrainGamesLabel = [self addLabelWithFrame:CGRectMake(unlimitedBrainGameView.frame.size.width/2-unlimitedBrainGamesLabelwidth/2,unlimitedBrainGameView.frame.size.height/2-50/2,unlimitedBrainGamesLabelwidth,50) text:@"League Subscription Package $25" font:[UIFont fontWithName:@"Roboto-Regular" size:28] textColor:[UIColor whiteColor] textAlign:NSTextAlignmentLeft];
    [unlimitedBrainGameView addSubview:unlimitedBrainGamesLabel];
    
    UIImage * submitBackgroundScreenImage = [UIImage imageNamed:@"screen_2"];
    UIImageView * submitBackgroundScreen = [[UIImageView alloc]init];
    [submitBackgroundScreen setFrame:CGRectMake(kapishFee_leagueFeeView.frame.size.width/2-unlimitedBrainGameViewWidth/2 ,kapishFee_leagueFeeView.frame.size.height/2,unlimitedBrainGameViewWidth, submitBackgroundScreenImage.size.height)];
    [submitBackgroundScreen setImage:submitBackgroundScreenImage];
    [kapishFee_leagueFeeView addSubview:submitBackgroundScreen];
    
    
    CGFloat descriptionLabelwidth = 640;
    UILabel* descriptionLabel = [self addLabelWithFrame:CGRectMake(submitBackgroundScreen.frame.size.width/2-descriptionLabelwidth/2+640/32,submitBackgroundScreen.frame.size.height/2-80+80/8,descriptionLabelwidth,80) text:@"Athletes who want doctor coverage are needed to pay this fee and can apply here.\n \nApplicable for those Athletes who are not refered by League. \n\nThis fee is valid for 1 League only." font:[UIFont fontWithName:@"Roboto-Regular" size:13] textColor:[UIColor colorWithRed:34.0/255.0 green:34.0/255.0 blue:35.0/255.0 alpha:1.0] textAlign:NSTextAlignmentLeft];
    descriptionLabel.numberOfLines=12;
    [submitBackgroundScreen addSubview:descriptionLabel];
    
    
    
    UIButton *submit_btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    submit_btn.frame = CGRectMake(submitBackgroundScreen.frame.size.width/2-100/2,submitBackgroundScreen.frame.size.height-28-28/6,100,28);
    [submit_btn setBackgroundColor:[UIColor colorWithRed:58/255.0 green:124/255.0 blue:180/255.0 alpha:1.0]];
    [self.submit_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [submit_btn setTitle:@"Submit" forState:UIControlStateNormal];
    [submit_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submit_btn.titleLabel setFont:[UIFont fontWithName:@"Roboto-Regular" size:18]];
    submit_btn.layer.cornerRadius = 1;
    submit_btn.clipsToBounds = YES;
    [submitBackgroundScreen addSubview:submit_btn];
    
    
    
    CGFloat endLineViewWidth=640;
    CGFloat endLineViewHeight=5;
    UIView* endLineView=[self addViewWithFrame:CGRectMake(submitBackgroundScreen.frame.size.width-endLineViewWidth,submitBackgroundScreen.frame.size.height, endLineViewWidth,endLineViewHeight) backGround:[UIColor colorWithRed:58.0/255.0 green:124.0/255.0 blue:180.0/255.0 alpha:1.0]];
    [endLineView.layer setBorderColor:[UIColor colorWithRed:82.0/255.0 green:122.0/255.0 blue:179.0/255.0 alpha:1.0].CGColor];
    [endLineView.layer setBorderWidth:1];
    [endLineView setTag:103];
    [submitBackgroundScreen addSubview:endLineView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
    * Method to perform an action on UIButton
 */

-(IBAction)buttonAction:(UIButton *)sender
{
    
}

/*
   * Method for setting backgroung color
 */

- (void)setBGColor:(UIColor *)color forAllSubviewsOf:(UIView *)view
{
    [view setBackgroundColor:color];
    for (UIView *sub in view.subviews)
        [self setBGColor:color forAllSubviewsOf:sub];
}

/*
    * Method for adding UIImage
 */
-(UIImageView*)addImageWithFrame:(CGRect)frame backGroundImage:(UIImage *)backGroundImage
{
    UIImageView * image=[[UIImageView alloc]init];
    [image setImage:backGroundImage];
    
    return image;
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

-(UIView*)addViewWithFrame:(CGRect)frame backGround:(UIColor *)bgColor
{
    UIView *loginview =[[UIView alloc]init];
    [loginview setFrame:frame];
    [loginview setBackgroundColor:bgColor];
    loginview.layer.borderWidth = 5;
    loginview.layer.borderColor = UIColor.blackColor.CGColor;
    return loginview;
    
}

/*
   * Method for adding UITextField
 */
-(UITextField *)addTextFieldWithFrame:(CGRect)frame placeHolder:(NSString * )placeHolder {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.borderStyle = UITextBorderStyleLine;
    textField.font = [UIFont systemFontOfSize:15];
    textField.placeholder = placeHolder;
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.backgroundColor=[UIColor whiteColor];
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    [textField setDelegate:(id)self];
    
    UIView * paddingView= [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 0)];
    [textField setLeftView:paddingView];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView * imageView = [[UIImageView alloc]init];
    [textField addSubview:imageView];
    return textField;
    
}

/*
    * Method for adding UIButton
 */
-(UIButton *)addButtonWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor image:(UIImage *)image title:(NSString *)title selectedImage:(UIImage *)selectedImage size:(float )size
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setBackgroundColor:bgColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:size]];
    [button setTitleColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:selectedImage forState:UIControlStateSelected];
    return button;
}


@end
