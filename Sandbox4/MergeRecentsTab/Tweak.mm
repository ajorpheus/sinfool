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

@class MPRecentsTableViewController; @class UISegmentedControl; 
static unsigned long long (*_logos_orig$_ungrouped$UISegmentedControl$numberOfSegments)(_LOGOS_SELF_TYPE_NORMAL UISegmentedControl* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$UISegmentedControl$numberOfSegments(_LOGOS_SELF_TYPE_NORMAL UISegmentedControl* _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$MPRecentsTableViewController$requiresNavigationControllerContainer)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$MPRecentsTableViewController$requiresNavigationControllerContainer(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$UISegmentedControl$numberOfSegments(_LOGOS_SELF_TYPE_NORMAL UISegmentedControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_meta_method$_ungrouped$MPRecentsTableViewController$requiresNavigationControllerContainer(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UISegmentedControl = objc_getClass("UISegmentedControl"); { MSHookMessageEx(_logos_class$_ungrouped$UISegmentedControl, @selector(numberOfSegments), (IMP)&_logos_method$_ungrouped$UISegmentedControl$numberOfSegments, (IMP*)&_logos_orig$_ungrouped$UISegmentedControl$numberOfSegments);}Class _logos_class$_ungrouped$MPRecentsTableViewController = objc_getClass("MPRecentsTableViewController"); Class _logos_metaclass$_ungrouped$MPRecentsTableViewController = object_getClass(_logos_class$_ungrouped$MPRecentsTableViewController); { MSHookMessageEx(_logos_metaclass$_ungrouped$MPRecentsTableViewController, @selector(requiresNavigationControllerContainer), (IMP)&_logos_meta_method$_ungrouped$MPRecentsTableViewController$requiresNavigationControllerContainer, (IMP*)&_logos_meta_orig$_ungrouped$MPRecentsTableViewController$requiresNavigationControllerContainer);}} }
#line 15 "Tweak.xm"
