#line 1 "/Volumes/Hank/Hank工作/课程/备课/安全攻防/iOS逆向工程与应用安全/006--HOOK原理/代码/005--MonkeyDemo/005--MonkeyDemoDylib/Logos/_05__MonkeyDemoDylib.xm"






#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ViewController; 
static void (*_logos_orig$_ungrouped$ViewController$btnClik1$)(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$ViewController$btnClik1$(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 6 "/Volumes/Hank/Hank工作/课程/备课/安全攻防/iOS逆向工程与应用安全/006--HOOK原理/代码/005--MonkeyDemo/005--MonkeyDemoDylib/Logos/_05__MonkeyDemoDylib.xm"

static void _logos_method$_ungrouped$ViewController$btnClik1$(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    NSLog(@"来了！！");
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController"); MSHookMessageEx(_logos_class$_ungrouped$ViewController, @selector(btnClik1:), (IMP)&_logos_method$_ungrouped$ViewController$btnClik1$, (IMP*)&_logos_orig$_ungrouped$ViewController$btnClik1$);} }
#line 12 "/Volumes/Hank/Hank工作/课程/备课/安全攻防/iOS逆向工程与应用安全/006--HOOK原理/代码/005--MonkeyDemo/005--MonkeyDemoDylib/Logos/_05__MonkeyDemoDylib.xm"
