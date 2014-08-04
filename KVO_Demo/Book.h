//
//  Book.h
//  KVO
//
//  Created by dongway on 14-8-4.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Author;
@interface Book : NSObject
{
    NSString *name;
    Author *author;
    float price;
    
    NSTimer *timer;
    int count;
}

-(void)addObserver;
@end
