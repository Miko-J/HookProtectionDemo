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
    //基本防护
    struct rebinding bd;
    bd.name = "method_exchangeImplementations";
    bd.replacement = myExchange;
    bd.replaced = (void *)&exhangeP;
    
    //setIMP
    struct rebinding gt;
    gt.name = "method_getImplementation";
    gt.replacement = my_getIMP;
    gt.replaced = (void *)&getIMP;
    
    //getIMP
    struct rebinding st;
    st.name = "method_setImplementation";
    st.replacement = my_setIMP;
    st.replaced = (void *)&setIMP;
    
    struct rebinding rebs[3] = {bd,gt,st};
    rebind_symbols(rebs, 3);
    
}

//保存原来的交换函数
IMP  (*getIMP)(Method _Nonnull m);
IMP  (*setIMP)(Method _Nonnull m, IMP _Nonnull imp);

IMP  my_getIMP(Method _Nonnull m){
    exit(0);
    return nil;
}
IMP  my_setIMP(Method _Nonnull m, IMP _Nonnull imp){
    exit(0);
    return nil;
}


void(*exhangeP)(Method _Nonnull m1, Method _Nonnull m2);


void myExchange(Method _Nonnull m1, Method _Nonnull m2){
    NSLog(@"检测到HOOK");
}

@end
