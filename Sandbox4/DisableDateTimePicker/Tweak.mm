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

@class PSUIDateTimePickerCell; 
static PSUIDateTimePickerCell* (*_logos_orig$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$)(_LOGOS_SELF_TYPE_INIT PSUIDateTimePickerCell*, SEL, long long, id, id) _LOGOS_RETURN_RETAINED; static PSUIDateTimePickerCell* _logos_method$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$(_LOGOS_SELF_TYPE_INIT PSUIDateTimePickerCell*, SEL, long long, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static PSUIDateTimePickerCell* _logos_method$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$(_LOGOS_SELF_TYPE_INIT PSUIDateTimePickerCell* __unused self, SEL __unused _cmd, long long arg1, id arg2, id arg3) _LOGOS_RETURN_RETAINED {
    arg1 = -1;
    return _logos_orig$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PSUIDateTimePickerCell = objc_getClass("PSUIDateTimePickerCell"); { MSHookMessageEx(_logos_class$_ungrouped$PSUIDateTimePickerCell, @selector(initWithStyle:reuseIdentifier:specifier:), (IMP)&_logos_method$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$, (IMP*)&_logos_orig$_ungrouped$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$);}} }
#line 10 "Tweak.xm"
