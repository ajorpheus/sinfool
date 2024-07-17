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

@class UISearchBarBackground; @class PSListController; @class UITableViewLabel; @class UIGroupTableViewCellBackground; @class UITableView; @class PSSearchController; 
static void (*_logos_orig$_ungrouped$PSSearchController$setSearchBarVisible$animated$)(_LOGOS_SELF_TYPE_NORMAL PSSearchController* _LOGOS_SELF_CONST, SEL, bool, bool); static void _logos_method$_ungrouped$PSSearchController$setSearchBarVisible$animated$(_LOGOS_SELF_TYPE_NORMAL PSSearchController* _LOGOS_SELF_CONST, SEL, bool, bool); static id (*_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelected$)(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelected$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$)(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$UITableViewLabel$highlightedTextColor)(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UITableViewLabel$highlightedTextColor(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PSListController$setEdgeToEdgeCells$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$PSListController$setEdgeToEdgeCells$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$PSListController$_isRegularWidth)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PSListController$_isRegularWidth(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PSSearchController$setSearchBarVisible$animated$(_LOGOS_SELF_TYPE_NORMAL PSSearchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$PSSearchController$setSearchBarVisible$animated$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, double arg2) {
    
    arg2 = 0;
    return _logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelected$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelected$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UIGroupTableViewCellBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:76/255.0 green:162/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$UITableViewLabel$highlightedTextColor(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static void _logos_method$_ungrouped$PSListController$setEdgeToEdgeCells$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$PSListController$setEdgeToEdgeCells$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$PSListController$_isRegularWidth(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PSSearchController = objc_getClass("PSSearchController"); { MSHookMessageEx(_logos_class$_ungrouped$PSSearchController, @selector(setSearchBarVisible:animated:), (IMP)&_logos_method$_ungrouped$PSSearchController$setSearchBarVisible$animated$, (IMP*)&_logos_orig$_ungrouped$PSSearchController$setSearchBarVisible$animated$);}Class _logos_class$_ungrouped$UISearchBarBackground = objc_getClass("UISearchBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)&_logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP*)&_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);}Class _logos_class$_ungrouped$UIGroupTableViewCellBackground = objc_getClass("UIGroupTableViewCellBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UIGroupTableViewCellBackground, @selector(setSelected:), (IMP)&_logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelected$, (IMP*)&_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelected$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIGroupTableViewCellBackground, @selector(setSelectionTintColor:), (IMP)&_logos_method$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$, (IMP*)&_logos_orig$_ungrouped$UIGroupTableViewCellBackground$setSelectionTintColor$);}Class _logos_class$_ungrouped$UITableViewLabel = objc_getClass("UITableViewLabel"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewLabel, @selector(highlightedTextColor), (IMP)&_logos_method$_ungrouped$UITableViewLabel$highlightedTextColor, (IMP*)&_logos_orig$_ungrouped$UITableViewLabel$highlightedTextColor);}Class _logos_class$_ungrouped$PSListController = objc_getClass("PSListController"); { MSHookMessageEx(_logos_class$_ungrouped$PSListController, @selector(setEdgeToEdgeCells:), (IMP)&_logos_method$_ungrouped$PSListController$setEdgeToEdgeCells$, (IMP*)&_logos_orig$_ungrouped$PSListController$setEdgeToEdgeCells$);}{ MSHookMessageEx(_logos_class$_ungrouped$PSListController, @selector(_isRegularWidth), (IMP)&_logos_method$_ungrouped$PSListController$_isRegularWidth, (IMP*)&_logos_orig$_ungrouped$PSListController$_isRegularWidth);}} }
#line 63 "Tweak.xm"
