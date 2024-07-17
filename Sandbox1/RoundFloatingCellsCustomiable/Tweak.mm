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

@class _UIGroupTableViewCellBackgroundImageKey; @class UISearchBarBackground; @class UIView; @class UITableViewCell; @class UITableView; 
static void (*_logos_orig$_ungrouped$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UITableView$_shouldShowHeadersAndFooters)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITableView$_shouldShowHeadersAndFooters(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$UITableView$_defaultSectionHeaderHeight)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UITableView$_defaultSectionHeaderHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$UITableView$_defaultSectionFooterHeight)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UITableView$_defaultSectionFooterHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$)(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$)(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, int); static id (*_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, int, float); static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, int, float); static bool (*_logos_orig$_ungrouped$UITableViewCell$_insetsBackground)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableViewCell$_setOpaque$forSubview$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$UITableViewCell$_setOpaque$forSubview$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool, id); static id (*_logos_orig$_ungrouped$UIView$backgroundColor)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIView$backgroundColor(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, float arg2) {
    
    arg2 = 0;
    return _logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$UITableView$_shouldShowHeadersAndFooters(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$UITableView$_defaultSectionHeaderHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$UITableView$_defaultSectionFooterHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 4.75;
    _logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$UITableViewCell$_setOpaque$forSubview$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$UITableViewCell$_setOpaque$forSubview$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$UIView$backgroundColor(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(_shouldShowHeadersAndFooters), (IMP)&_logos_method$_ungrouped$UITableView$_shouldShowHeadersAndFooters, (IMP*)&_logos_orig$_ungrouped$UITableView$_shouldShowHeadersAndFooters);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(_defaultSectionHeaderHeight), (IMP)&_logos_method$_ungrouped$UITableView$_defaultSectionHeaderHeight, (IMP*)&_logos_orig$_ungrouped$UITableView$_defaultSectionHeaderHeight);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(_defaultSectionFooterHeight), (IMP)&_logos_method$_ungrouped$UITableView$_defaultSectionFooterHeight, (IMP*)&_logos_orig$_ungrouped$UITableView$_defaultSectionFooterHeight);}Class _logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey"); { MSHookMessageEx(_logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey, @selector(setSectionBorderWidth:), (IMP)&_logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$, (IMP*)&_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey, @selector(setSectionLocation:), (IMP)&_logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$, (IMP*)&_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$);}Class _logos_class$_ungrouped$UISearchBarBackground = objc_getClass("UISearchBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)&_logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP*)&_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_insetsBackground), (IMP)&_logos_method$_ungrouped$UITableViewCell$_insetsBackground, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_insetsBackground);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_setOpaque:forSubview:), (IMP)&_logos_method$_ungrouped$UITableViewCell$_setOpaque$forSubview$, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_setOpaque$forSubview$);}Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); { MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(backgroundColor), (IMP)&_logos_method$_ungrouped$UIView$backgroundColor, (IMP*)&_logos_orig$_ungrouped$UIView$backgroundColor);}} }
#line 82 "Tweak.xm"
