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

@class UIKBTree; 
static int (*_logos_orig$_ungrouped$UIKBTree$visualStyle)(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIKBTree$visualStyle(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static int _logos_method$_ungrouped$UIKBTree$visualStyle(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 5;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKBTree = objc_getClass("UIKBTree"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTree, @selector(visualStyle), (IMP)&_logos_method$_ungrouped$UIKBTree$visualStyle, (IMP*)&_logos_orig$_ungrouped$UIKBTree$visualStyle);}} }
#line 9 "Tweak.xm"