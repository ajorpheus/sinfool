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

@class _UITableViewHeaderFooterContentView; 
static _UITableViewHeaderFooterContentView* (*_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT _UITableViewHeaderFooterContentView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static _UITableViewHeaderFooterContentView* _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$initWithFrame$(_LOGOS_SELF_TYPE_INIT _UITableViewHeaderFooterContentView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static _UITableViewHeaderFooterContentView* _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$initWithFrame$(_LOGOS_SELF_TYPE_INIT _UITableViewHeaderFooterContentView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UITableViewHeaderFooterContentView = objc_getClass("_UITableViewHeaderFooterContentView"); { MSHookMessageEx(_logos_class$_ungrouped$_UITableViewHeaderFooterContentView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$_UITableViewHeaderFooterContentView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$initWithFrame$);}} }
#line 10 "Tweak.xm"
