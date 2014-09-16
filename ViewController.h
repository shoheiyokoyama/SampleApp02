//
//  ViewController.h
//  SampleApp02
//
//  Created by 横山祥平 on 2014/09/08.
//  Copyright (c) 2014年 ___sho.com___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, atomic) NSArray *imageArray;
@property (assign) int imageArraySelectedIndex;
@end

