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

@class SPUISearchTableHeaderView; @class SBSearchBackdropView; @class SBSearchBlurEffectView; @class UITableViewCell; @class SPUISearchViewController; @class SPUISearchTableView; @class UITableView; @class SearchUIRoundedView; 
static bool (*_logos_orig$_ungrouped$SBSearchBackdropView$useHighQualityGraphics)(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$)(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL, double); static SBSearchBlurEffectView* (*_logos_orig$_ungrouped$SBSearchBlurEffectView$init)(_LOGOS_SELF_TYPE_INIT SBSearchBlurEffectView*, SEL) _LOGOS_RETURN_RETAINED; static SBSearchBlurEffectView* _logos_method$_ungrouped$SBSearchBlurEffectView$init(_LOGOS_SELF_TYPE_INIT SBSearchBlurEffectView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$)(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static void _logos_method$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static void (*_logos_orig$_ungrouped$SearchUIRoundedView$setColor$)(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SearchUIRoundedView$setColor$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$)(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static id _logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST, SEL, bool, bool); static bool (*_logos_orig$_ungrouped$UITableViewCell$_insetsBackground)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$SPUISearchViewController$shouldShowMoreButtonForSection$)(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static bool _logos_method$_ungrouped$SPUISearchViewController$shouldShowMoreButtonForSection$(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static void (*_logos_orig$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$)(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$)(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableHeaderView* _LOGOS_SELF_CONST, SEL, id, unsigned long long, bool); static void _logos_method$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableHeaderView* _LOGOS_SELF_CONST, SEL, id, unsigned long long, bool); static bool (*_logos_orig$_ungrouped$SPUISearchTableView$sectionIsExpanded$)(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableView* _LOGOS_SELF_CONST, SEL, long long); static bool _logos_method$_ungrouped$SPUISearchTableView$sectionIsExpanded$(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableView* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static SBSearchBlurEffectView* _logos_method$_ungrouped$SBSearchBlurEffectView$init(_LOGOS_SELF_TYPE_INIT SBSearchBlurEffectView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static void _logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.95;
    _logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    
    arg1 = 1;
    arg2 = 1;
    _logos_orig$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SearchUIRoundedView$setColor$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:28/255.0];
    _logos_orig$_ungrouped$SearchUIRoundedView$setColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(_LOGOS_SELF_TYPE_NORMAL SearchUIRoundedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    
    arg1 = 1;
    arg2 = 1;
    return _logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$UITableViewCell$_insetsBackground(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SPUISearchViewController$shouldShowMoreButtonForSection$(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    
    return 0;
}



static void _logos_method$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2, bool arg3) {
    
    arg3 = 1;
    _logos_orig$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$(self, _cmd, arg1, arg2, arg3);
}



static bool _logos_method$_ungrouped$SPUISearchTableView$sectionIsExpanded$(_LOGOS_SELF_TYPE_NORMAL SPUISearchTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static void _logos_method$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSearchBackdropView = objc_getClass("SBSearchBackdropView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchBackdropView, @selector(useHighQualityGraphics), (IMP)&_logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics, (IMP*)&_logos_orig$_ungrouped$SBSearchBackdropView$useHighQualityGraphics);}{ MSHookMessageEx(_logos_class$_ungrouped$SBSearchBackdropView, @selector(setTransitionProgress:), (IMP)&_logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$, (IMP*)&_logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$);}Class _logos_class$_ungrouped$SBSearchBlurEffectView = objc_getClass("SBSearchBlurEffectView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchBlurEffectView, @selector(init), (IMP)&_logos_method$_ungrouped$SBSearchBlurEffectView$init, (IMP*)&_logos_orig$_ungrouped$SBSearchBlurEffectView$init);}Class _logos_class$_ungrouped$SearchUIRoundedView = objc_getClass("SearchUIRoundedView"); { MSHookMessageEx(_logos_class$_ungrouped$SearchUIRoundedView, @selector(updateCornersRoundTop:roundBottom:), (IMP)&_logos_method$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$, (IMP*)&_logos_orig$_ungrouped$SearchUIRoundedView$updateCornersRoundTop$roundBottom$);}{ MSHookMessageEx(_logos_class$_ungrouped$SearchUIRoundedView, @selector(setColor:), (IMP)&_logos_method$_ungrouped$SearchUIRoundedView$setColor$, (IMP*)&_logos_orig$_ungrouped$SearchUIRoundedView$setColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$SearchUIRoundedView, @selector(imageWithCornersRoundedTop:roundedBottom:), (IMP)&_logos_method$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$, (IMP*)&_logos_orig$_ungrouped$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_insetsBackground), (IMP)&_logos_method$_ungrouped$UITableViewCell$_insetsBackground, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_insetsBackground);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);}Class _logos_class$_ungrouped$SPUISearchViewController = objc_getClass("SPUISearchViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(shouldShowMoreButtonForSection:), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$shouldShowMoreButtonForSection$, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$shouldShowMoreButtonForSection$);}{ MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(setClearSearchTimeInterval:), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$setClearSearchTimeInterval$);}Class _logos_class$_ungrouped$SPUISearchTableHeaderView = objc_getClass("SPUISearchTableHeaderView"); { MSHookMessageEx(_logos_class$_ungrouped$SPUISearchTableHeaderView, @selector(updateWithTitle:section:isExpanded:), (IMP)&_logos_method$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$, (IMP*)&_logos_orig$_ungrouped$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$);}Class _logos_class$_ungrouped$SPUISearchTableView = objc_getClass("SPUISearchTableView"); { MSHookMessageEx(_logos_class$_ungrouped$SPUISearchTableView, @selector(sectionIsExpanded:), (IMP)&_logos_method$_ungrouped$SPUISearchTableView$sectionIsExpanded$, (IMP*)&_logos_orig$_ungrouped$SPUISearchTableView$sectionIsExpanded$);}} }
#line 96 "Tweak.xm"
