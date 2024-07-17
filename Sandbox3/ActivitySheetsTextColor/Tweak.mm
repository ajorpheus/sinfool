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

@class _UIActivityGroupListViewController; @class _UIActivityGroupActivityCellTitleLabel; @class UIActivityGroupViewController; 
static bool (*_logos_orig$_ungrouped$_UIActivityGroupListViewController$darkStyleOnLegacyApp)(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIActivityGroupListViewController$darkStyleOnLegacyApp(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIActivityGroupViewController$darkStyleOnLegacyApp)(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIActivityGroupViewController$darkStyleOnLegacyApp(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupActivityCellTitleLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupActivityCellTitleLabel* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$_UIActivityGroupListViewController$darkStyleOnLegacyApp(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$UIActivityGroupViewController$darkStyleOnLegacyApp(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupActivityCellTitleLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIActivityGroupListViewController = objc_getClass("_UIActivityGroupListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$_UIActivityGroupListViewController, @selector(darkStyleOnLegacyApp), (IMP)&_logos_method$_ungrouped$_UIActivityGroupListViewController$darkStyleOnLegacyApp, (IMP*)&_logos_orig$_ungrouped$_UIActivityGroupListViewController$darkStyleOnLegacyApp);}Class _logos_class$_ungrouped$UIActivityGroupViewController = objc_getClass("UIActivityGroupViewController"); { MSHookMessageEx(_logos_class$_ungrouped$UIActivityGroupViewController, @selector(darkStyleOnLegacyApp), (IMP)&_logos_method$_ungrouped$UIActivityGroupViewController$darkStyleOnLegacyApp, (IMP*)&_logos_orig$_ungrouped$UIActivityGroupViewController$darkStyleOnLegacyApp);}Class _logos_class$_ungrouped$_UIActivityGroupActivityCellTitleLabel = objc_getClass("_UIActivityGroupActivityCellTitleLabel"); { MSHookMessageEx(_logos_class$_ungrouped$_UIActivityGroupActivityCellTitleLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$_UIActivityGroupActivityCellTitleLabel$setTextColor$);}} }
#line 25 "Tweak.xm"
