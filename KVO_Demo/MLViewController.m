//
//  MLViewController.m
//  KVO_Demo
//
//  Created by dongway on 14-8-4.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "MLViewController.h"
#import "Book.h"

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)countAddNumber:(id)sender {
    
    Book *book = [[Book alloc] init];
    [book addObserver];
    
}


@end
