//
//  ViewController.m
//  SlideshowApp
//
//  Created by bpqd on 2015/12/01.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *aImageView;
    NSInteger countNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber = 1;
    [self setupBackground];
    [self setupButton];
}

-(void)setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    aImageView.image = [UIImage imageNamed:@"flower1.png"];
    [self.view addSubview:aImageView];
}

-(void)setupButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //ボタン画像
    [button setImage:[UIImage imageNamed:@"minatoku.png"]
            forState:UIControlStateNormal];
    //ボタン位置
    button.frame = CGRectMake(0, 0, 70, 70);
    button.center = CGPointMake(90, 500);
    [button addTarget:self action:@selector(changeImageUsingString:)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *rButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //ボタン画像
    [rButton setImage:[UIImage imageNamed:@"cyoufu.png"]
            forState:UIControlStateNormal];
    //ボタン位置
    rButton.frame = CGRectMake(0, 0, 70, 70);
    rButton.center = CGPointMake(230, 500);
    [rButton addTarget:self action:@selector(changeImagedecrement:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rButton];
}

//あとで写真を変更
-(void)changeImageUsingString:(id)sender{
    countNumber++;
    if (countNumber>=4) {
        countNumber = 1;
        }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"flower%ld.png",(long)countNumber]];
}

-(void)changeImagedecrement:(id)sender{
    countNumber--;
    if (countNumber<=0) {
        countNumber = 3;
    }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"flower%ld.png",(long)countNumber]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//再提出

@end
