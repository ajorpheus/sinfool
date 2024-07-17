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

@class UIStatusBarNewUIForegroundStyleAttributes; @class UITableView; @class UITableViewCellSelectedBackground; 
static UIStatusBarNewUIForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes* __unused self, SEL __unused _cmd, float arg1, int arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:38/255.0 green:118/255.0 blue:215/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:182/255.0 green:200/255.0 blue:223/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableView$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableView$setSeparatorColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes = objc_getClass("UIStatusBarNewUIForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:backgroundColor:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorColor:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorColor$);}Class _logos_class$_ungrouped$UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)&_logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$);}} }
#line 35 "Tweak.xm"
