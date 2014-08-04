//
//  Book.m
//  KVO
//
//  Created by dongway on 14-8-4.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)init{
    if (self = [super init]) {
        count = 0;
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{

    if ([keyPath isEqualToString:@"price"]) {
        NSLog(@"old:%@",[change valueForKey:@"old"]);
        NSLog(@"new:%@",[change valueForKey:@"new"]);
    }else if([keyPath isEqualToString:@"name"]){
        NSLog(@"new name:%@",[change valueForKey:@"new"]);
    }
}

-(void)addObserver{
    [self setValue:[NSString stringWithFormat:@"%d",count] forKey:@"price"];
    [self addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(changePrice) userInfo:nil repeats:YES];

}

-(void)changePrice{
    count++;
    if (count<10) {
        //只要value的值一改变，就会触发监听方法。达到实时监听的作用
        [self setValue:[NSString stringWithFormat:@"%d",count] forKey:@"price"];
        [self setValue:@"ios bookname" forKey:@"name"];
        NSLog(@"%@",name);
    }else{
        [timer invalidate];
    }
    
}
@end
