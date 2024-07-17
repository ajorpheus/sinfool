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

@class UITableViewCell; @class SearchUIRoundedView; @class UITableView; 
static id (*_logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$)(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static id _logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static bool (*_logos_orig$_ungrouped$UITableViewCell$_insetsBackground)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    arg1 = 1;
    arg2 = 1;
    return _logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SearchUIRoundedView = objc_getClass("SearchUIRoundedView"); { MSHookMessageEx(_logos_class$_ungrouped$SearchUIRoundedView, @selector(imageWithCornersRoundedTop:roundedBottom:), (IMP)&_logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$, (IMP*)&_logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_insetsBackground), (IMP)&_logos_method$_ungrouped$UITableViewCell$_insetsBackground, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_insetsBackground);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);}} }
#line 24 "Tweak.xm"
