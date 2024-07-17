#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


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

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class IGViewController; @class IGNavigationBar; 
static bool (*_logos_orig$_ungrouped$IGViewController$prefersStatusBarHidden)(_LOGOS_SELF_TYPE_NORMAL IGViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$IGViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL IGViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$IGNavigationBar$maintainBarHeightWhenStatusBarHidden)(_LOGOS_SELF_TYPE_NORMAL IGNavigationBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$IGNavigationBar$maintainBarHeightWhenStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL IGNavigationBar* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$IGViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL IGViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$IGNavigationBar$maintainBarHeightWhenStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL IGNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$IGViewController = objc_getClass("IGViewController"); { MSHookMessageEx(_logos_class$_ungrouped$IGViewController, @selector(prefersStatusBarHidden), (IMP)&_logos_method$_ungrouped$IGViewController$prefersStatusBarHidden, (IMP*)&_logos_orig$_ungrouped$IGViewController$prefersStatusBarHidden);}Class _logos_class$_ungrouped$IGNavigationBar = objc_getClass("IGNavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$IGNavigationBar, @selector(maintainBarHeightWhenStatusBarHidden), (IMP)&_logos_method$_ungrouped$IGNavigationBar$maintainBarHeightWhenStatusBarHidden, (IMP*)&_logos_orig$_ungrouped$IGNavigationBar$maintainBarHeightWhenStatusBarHidden);}} }
#line 15 "Tweak.xm"
