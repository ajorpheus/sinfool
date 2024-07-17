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

@class SBAppSwitcherPeopleScrollView; @class SBAppSwitcherSettings; 
static long long (*_logos_orig$_ungrouped$SBAppSwitcherSettings$peopleNumberOfRecents)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBAppSwitcherSettings$peopleNumberOfRecents(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPeopleScrollView* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPeopleScrollView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$SBAppSwitcherSettings$peopleNumberOfRecents(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPeopleScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = @"Flex 2";
    return _logos_orig$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherSettings, @selector(peopleNumberOfRecents), (IMP)&_logos_method$_ungrouped$SBAppSwitcherSettings$peopleNumberOfRecents, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherSettings$peopleNumberOfRecents);}Class _logos_class$_ungrouped$SBAppSwitcherPeopleScrollView = objc_getClass("SBAppSwitcherPeopleScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherPeopleScrollView, @selector(_labelImageParametersForLabelString:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$);}} }
#line 18 "Tweak.xm"
