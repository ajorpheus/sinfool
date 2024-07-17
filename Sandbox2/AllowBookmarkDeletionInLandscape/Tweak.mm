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

@class BookmarksNavigationController; 
static bool (*_logos_orig$_ungrouped$BookmarksNavigationController$allowsEditing)(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$BookmarksNavigationController$allowsEditing(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BookmarksNavigationController$setAllowsEditing$)(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$BookmarksNavigationController$setAllowsEditing$(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$BookmarksNavigationController$allowsEditing(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$BookmarksNavigationController$setAllowsEditing$(_LOGOS_SELF_TYPE_NORMAL BookmarksNavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$BookmarksNavigationController$setAllowsEditing$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BookmarksNavigationController = objc_getClass("BookmarksNavigationController"); { MSHookMessageEx(_logos_class$_ungrouped$BookmarksNavigationController, @selector(allowsEditing), (IMP)&_logos_method$_ungrouped$BookmarksNavigationController$allowsEditing, (IMP*)&_logos_orig$_ungrouped$BookmarksNavigationController$allowsEditing);}{ MSHookMessageEx(_logos_class$_ungrouped$BookmarksNavigationController, @selector(setAllowsEditing:), (IMP)&_logos_method$_ungrouped$BookmarksNavigationController$setAllowsEditing$, (IMP*)&_logos_orig$_ungrouped$BookmarksNavigationController$setAllowsEditing$);}} }
#line 16 "Tweak.xm"
