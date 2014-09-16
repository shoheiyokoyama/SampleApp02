//
//  ViewController.m
//  SampleApp02
//
//  Created by 横山祥平 on 2014/09/08.
//  Copyright (c) 2014年 ___sho.com___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageArray = @[@"j1.jpeg", @"j2.jpeg", @"j3.jpeg", @"j4.jpeg",@"5.jpeg",@"6.jpeg",@"7.jpeg"];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *) touches withEvent: (UIEvent *) event
{
    UITouch * touchedObj = [[event allTouches] anyObject];
    if (touchedObj.view.tag ==_imageView.tag) {
        NSLog(@"imageViewタップ");
        if(_imageArray.count == _imageArraySelectedIndex + 1) {
            _imageArraySelectedIndex = 0;
        }
        else {
            _imageArraySelectedIndex++;
        }
        NSLog(@"_imageArraySelectedIndex = %d, currentImage=%@", _imageArraySelectedIndex, _imageArray[_imageArraySelectedIndex]);
        _imageView.image =  [UIImage imageNamed:_imageArray[_imageArraySelectedIndex]];
        
    }
}

@end