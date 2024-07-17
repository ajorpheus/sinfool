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

@class SBApplication; 
static bool (*_logos_orig$_ungrouped$SBApplication$suppressesCoverSheetGesture)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBApplication$suppressesCoverSheetGesture(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBApplication$suppressesCoverSheetGesture(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBApplication = objc_getClass("SBApplication"); { MSHookMessageEx(_logos_class$_ungrouped$SBApplication, @selector(suppressesCoverSheetGesture), (IMP)&_logos_method$_ungrouped$SBApplication$suppressesCoverSheetGesture, (IMP*)&_logos_orig$_ungrouped$SBApplication$suppressesCoverSheetGesture);}} }
#line 9 "Tweak.xm"
