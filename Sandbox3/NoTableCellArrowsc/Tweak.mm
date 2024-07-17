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

@class UITableViewCell; @class PSTableCell; 
static void (*_logos_orig$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$PSTableCell$forceHideDisclosureIndicator)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PSTableCell$forceHideDisclosureIndicator(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UITableViewCell$_disclosureChevronImage$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool); static id _logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$PSTableCell$forceHideDisclosureIndicator(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PSTableCell = objc_getClass("PSTableCell"); { MSHookMessageEx(_logos_class$_ungrouped$PSTableCell, @selector(setForceHideDisclosureIndicator:), (IMP)&_logos_method$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$, (IMP*)&_logos_orig$_ungrouped$PSTableCell$setForceHideDisclosureIndicator$);}{ MSHookMessageEx(_logos_class$_ungrouped$PSTableCell, @selector(forceHideDisclosureIndicator), (IMP)&_logos_method$_ungrouped$PSTableCell$forceHideDisclosureIndicator, (IMP*)&_logos_orig$_ungrouped$PSTableCell$forceHideDisclosureIndicator);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_disclosureChevronImage:), (IMP)&_logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_disclosureChevronImage$);}} }
#line 22 "Tweak.xm"
