//
//  ViewController.m
//  EscapesUsingEncodingSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //符号化を行う文字列を生成する
  NSString *str = @"The Objective-C language";
  
  //URLエンコードを行う
  str = [str stringByAddingPercentEscapesUsingEncoding:
         NSUTF8StringEncoding];
  
  NSLog(@"%@", str);
  
  //URLデコードを行う
  str = [str stringByReplacingPercentEscapesUsingEncoding:
         NSUTF8StringEncoding];
  
  NSLog(@"%@", str);
}

@end
