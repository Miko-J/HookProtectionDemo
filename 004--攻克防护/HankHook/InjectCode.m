//
//  InjectCode.m
//  HankHook
//
//  Created by H on 2018/12/7.
//  Copyright © 2018年 LogicEDU. All rights reserved.
//

#import "InjectCode.h"
#import <objc/runtime.h>

@implementation InjectCode

+(void)load
{
    NSLog(@"InjectCode+load");
    Method btn1 = class_getInstanceMethod(objc_getClass("ViewController"), @selector(btnClik1:));
     Method myBtn = class_getInstanceMethod(self, @selector(myBtn));
    method_exchangeImplementations(myBtn, btn1);
    
    
}

-(void)myBtn{
    NSLog(@"哥么HOOK住了！！");
}
@end
