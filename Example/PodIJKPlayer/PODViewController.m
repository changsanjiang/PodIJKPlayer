//
//  PODViewController.m
//  PodIJKPlayer
//
//  Created by changsanjiang on 07/12/2022.
//  Copyright (c) 2022 changsanjiang. All rights reserved.
//

#import "PODViewController.h"
#import <PodIJKPlayer/PodIJKPlayer.h>

@interface PODViewController ()
@property (nonatomic, strong) IJKFFMoviePlayerController *playerController;
@end

@implementation PODViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _playerController = [IJKFFMoviePlayerController.alloc initWithContentURL:[NSURL URLWithString:@"https://dh2.v.netease.com/2017/cg/fxtpty.mp4"] withOptions:IJKFFOptions.optionsByDefault];
    
    [_playerController prepareToPlay];
    [_playerController play];
    
    _playerController.view.frame = CGRectMake(20, 20, 300, 200);
    [self.view addSubview:_playerController.view];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
