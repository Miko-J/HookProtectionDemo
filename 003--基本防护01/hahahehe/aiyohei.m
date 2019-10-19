//
//  aiyohei.m
//  hahahehe
//
//  Created by H on 2018/12/12.
//  Copyright © 2018年 LogicEDU. All rights reserved.
//

#import "aiyohei.h"
#import "fishhook.h"
#import <objc/runtime.h>

@implementation aiyohei

+(void)load{
    NSLog(@"aiyohei+load");
    //基本防护
    struct rebinding bd;
    bd.name = "method_exchangeImplementations";
    bd.replacement = myExchange;
    bd.replaced = (void *)&exhangeP;
    
    struct rebinding rebs[1] = {bd};
    rebind_symbols(rebs, 1);
}

//保留原来的交换函数
void(*exhangeP)(Method _Nonnull m1, Method _Nonnull m2);


void myExchange(Method _Nonnull m1, Method _Nonnull m2){
    NSLog(@"检测到HOOK");
}

@end
