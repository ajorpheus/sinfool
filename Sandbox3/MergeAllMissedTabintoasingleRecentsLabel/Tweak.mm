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

@class PHRecentsToggleButton; 
static PHRecentsToggleButton* (*_logos_orig$_ungrouped$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$)(_LOGOS_SELF_TYPE_INIT PHRecentsToggleButton*, SEL, float, id, id) _LOGOS_RETURN_RETAINED; static PHRecentsToggleButton* _logos_method$_ungrouped$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$(_LOGOS_SELF_TYPE_INIT PHRecentsToggleButton*, SEL, float, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static PHRecentsToggleButton* _logos_method$_ungrouped$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$(_LOGOS_SELF_TYPE_INIT PHRecentsToggleButton* __unused self, SEL __unused _cmd, float arg1, id arg2, id arg3) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PHRecentsToggleButton = objc_getClass("PHRecentsToggleButton"); { MSHookMessageEx(_logos_class$_ungrouped$PHRecentsToggleButton, @selector(initWithWidth:leftTitle:rightTitle:), (IMP)&_logos_method$_ungrouped$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$, (IMP*)&_logos_orig$_ungrouped$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$);}} }
#line 9 "Tweak.xm"
