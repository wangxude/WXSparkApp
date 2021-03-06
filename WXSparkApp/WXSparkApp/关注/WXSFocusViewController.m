//
//  WXSFocusViewController.m
//  WXSparkApp
//
//  Created by 王旭 on 2019/4/22.
//  Copyright © 2019 王旭. All rights reserved.
//

#import "WXSFocusViewController.h"
#import "WXSAudioPlayerViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface WXSFocusViewController ()
/**noisy.mp3
 音频播放器
 */
@property (nonatomic ,strong) AVAudioPlayer *audioPlayer;


@end

@implementation WXSFocusViewController

- (void)viewDidLoad {
    
    //不同屏幕尺寸字体适配
    
    //    CGFloat kscreenWidthradio = [UIScreen mainScreen].bounds.size.width/ 375.0;
    //    CGFloat kscreenHeight = [UIScreen mainScreen].bounds.size.height/ 667.0;
    //    CGFloat x = ceilf(100.0) * kscreenWidthradio;
    //    CGFloat y = ceilf(200.0) * k
    
    
    //1.加载本地的音乐文件
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"3day.wav" withExtension:nil];
    //2.创建音乐播放器对象
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    //准备播放（音乐播放的内存空间的开辟等功能）
    [self.audioPlayer prepareToPlay];
    
    
    UIButton *playButton = [UIButton buttonWithType:UIButtonTypeCustom];
    playButton.frame = CGRectMake(100, 100, 100, 50);
    [playButton setTitle:@"播放" forState: UIControlStateNormal];
    [playButton setTitleColor:[UIColor redColor] forState: UIControlStateNormal];
    [playButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    playButton.tag = 1000;
    [self.view addSubview:playButton];
    
    UIButton *pauseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    pauseButton.frame = CGRectMake(100, 200, 100, 50);
    [pauseButton setTitle:@"暂停" forState: UIControlStateNormal];
    [pauseButton setTitleColor:[UIColor redColor] forState: UIControlStateNormal];
    [pauseButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    pauseButton.tag = 1001;
    [self.view addSubview:pauseButton];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeCustom];
    stopButton.frame = CGRectMake(100, 300, 100, 50);
    [stopButton setTitle:@"停止" forState: UIControlStateNormal];
    [stopButton setTitleColor:[UIColor redColor] forState: UIControlStateNormal];
    [stopButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    stopButton.tag = 1002;
    [self.view addSubview:stopButton];
    
}

- (void)clickAction:(UIButton *)button {
    if (button.tag == 1000) {
        [self.audioPlayer play];
    }else if (button.tag == 1001){
        [self.audioPlayer pause];
    }else {
        [self.audioPlayer stop];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
