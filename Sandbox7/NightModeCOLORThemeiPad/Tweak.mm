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

@class UINavigationBar; @class UILabel; @class UIGroupTableViewCellBackground; @class UITableView; @class UITextInputTraits; @class UIStatusBarNewUIForegroundStyleAttributes; @class UITableViewCellSelectedBackground; 
static UIStatusBarNewUIForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UINavigationBar$_setBarStyle$)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$UINavigationBar$_setBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$)(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$_ungrouped$UILabel$isEnabled)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UILabel$isEnabled(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UITextInputTraits$keyboardAppearance)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UITextInputTraits$keyboardAppearance(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes* __unused self, SEL __unused _cmd, float arg1, int arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$UINavigationBar$_setBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UINavigationBar$_setBarStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:21/255.0 green:21/255.0 blue:21/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:37/255.0 green:37/255.0 blue:37/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:37/255.0 green:37/255.0 blue:37/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableView$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:44/255.0 green:44/255.0 blue:44/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableView$setSeparatorColor$(self, _cmd, arg1);
}



static BOOL _logos_method$_ungrouped$UILabel$isEnabled(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static int _logos_method$_ungrouped$UITextInputTraits$keyboardAppearance(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes = objc_getClass("UIStatusBarNewUIForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:backgroundColor:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$);}Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(_setBarStyle:), (IMP)&_logos_method$_ungrouped$UINavigationBar$_setBarStyle$, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$_setBarStyle$);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorColor:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorColor$);}Class _logos_class$_ungrouped$UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)&_logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$);}Class _logos_class$_ungrouped$UIGroupTableViewCellBackground = objc_getClass("UIGroupTableViewCellBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UIGroupTableViewCellBackground, @selector(setSelectionTintColor:), (IMP)&_logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$, (IMP*)&_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); { MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(isEnabled), (IMP)&_logos_method$_ungrouped$UILabel$isEnabled, (IMP*)&_logos_orig$_ungrouped$UILabel$isEnabled);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(keyboardAppearance), (IMP)&_logos_method$_ungrouped$UITextInputTraits$keyboardAppearance, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$keyboardAppearance);}} }
#line 65 "Tweak.xm"
