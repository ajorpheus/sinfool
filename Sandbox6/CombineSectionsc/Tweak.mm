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

@class UITableView; @class _UIGroupTableViewCellBackgroundImageKey; 
static double (*_logos_orig$_ungrouped$UITableView$sectionHeaderHeight)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UITableView$sectionHeaderHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$UITableView$sectionFooterHeight)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UITableView$sectionFooterHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$UITableView$_shouldDrawSeparatorAtTopOfSection$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static bool _logos_method$_ungrouped$UITableView$_shouldDrawSeparatorAtTopOfSection$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static int (*_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$sectionLocation)(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$sectionLocation(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$UITableView$sectionHeaderHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$UITableView$sectionFooterHeight(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UITableView$_shouldDrawSeparatorAtTopOfSection$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 0;
}



static int _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$sectionLocation(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(sectionHeaderHeight), (IMP)&_logos_method$_ungrouped$UITableView$sectionHeaderHeight, (IMP*)&_logos_orig$_ungrouped$UITableView$sectionHeaderHeight);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(sectionFooterHeight), (IMP)&_logos_method$_ungrouped$UITableView$sectionFooterHeight, (IMP*)&_logos_orig$_ungrouped$UITableView$sectionFooterHeight);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(_shouldDrawSeparatorAtTopOfSection:), (IMP)&_logos_method$_ungrouped$UITableView$_shouldDrawSeparatorAtTopOfSection$, (IMP*)&_logos_orig$_ungrouped$UITableView$_shouldDrawSeparatorAtTopOfSection$);}Class _logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey"); { MSHookMessageEx(_logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey, @selector(sectionLocation), (IMP)&_logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$sectionLocation, (IMP*)&_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$sectionLocation);}} }
#line 39 "Tweak.xm"
