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

@class SBSearchScrollView; @class SBRootFolderView; 
static void (*_logos_orig$_ungrouped$SBRootFolderView$setStatusBarHeight$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBRootFolderView$setStatusBarHeight$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, double); static unsigned long long (*_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBSearchScrollView$gestureRecognizerShouldBegin$)(_LOGOS_SELF_TYPE_NORMAL SBSearchScrollView* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$SBSearchScrollView$gestureRecognizerShouldBegin$(_LOGOS_SELF_TYPE_NORMAL SBSearchScrollView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBRootFolderView$setStatusBarHeight$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 100;
    _logos_orig$_ungrouped$SBRootFolderView$setStatusBarHeight$(self, _cmd, arg1);
}



static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$SBSearchScrollView$gestureRecognizerShouldBegin$(_LOGOS_SELF_TYPE_NORMAL SBSearchScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBRootFolderView = objc_getClass("SBRootFolderView"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(setStatusBarHeight:), (IMP)&_logos_method$_ungrouped$SBRootFolderView$setStatusBarHeight$, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$setStatusBarHeight$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(_minusPageCount), (IMP)&_logos_method$_ungrouped$SBRootFolderView$_minusPageCount, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount);}Class _logos_class$_ungrouped$SBSearchScrollView = objc_getClass("SBSearchScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchScrollView, @selector(gestureRecognizerShouldBegin:), (IMP)&_logos_method$_ungrouped$SBSearchScrollView$gestureRecognizerShouldBegin$, (IMP*)&_logos_orig$_ungrouped$SBSearchScrollView$gestureRecognizerShouldBegin$);}} }
#line 23 "Tweak.xm"
