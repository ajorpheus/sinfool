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

@class MPUChronologicalProgressView; 
static id (*_logos_orig$_ungrouped$MPUChronologicalProgressView$_timeLabelFont)(_LOGOS_SELF_TYPE_NORMAL MPUChronologicalProgressView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MPUChronologicalProgressView$_timeLabelFont(_LOGOS_SELF_TYPE_NORMAL MPUChronologicalProgressView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$MPUChronologicalProgressView$_timeLabelFont(_LOGOS_SELF_TYPE_NORMAL MPUChronologicalProgressView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MPUChronologicalProgressView = objc_getClass("MPUChronologicalProgressView"); { MSHookMessageEx(_logos_class$_ungrouped$MPUChronologicalProgressView, @selector(_timeLabelFont), (IMP)&_logos_method$_ungrouped$MPUChronologicalProgressView$_timeLabelFont, (IMP*)&_logos_orig$_ungrouped$MPUChronologicalProgressView$_timeLabelFont);}} }
#line 9 "Tweak.xm"
