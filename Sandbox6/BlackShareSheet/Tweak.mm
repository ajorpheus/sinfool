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

@class _UIVisualEffectFilterView; @class _UIBarBackground; @class _UIActivityGroupListViewController; @class UIActivityGroupViewController; 
static void (*_logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id, bool); static void _logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id, bool); static void (*_logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$)(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$)(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, id arg2, bool arg3) {
    arg1 = 0;
    arg3 = 1;
    arg2 = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$(_LOGOS_SELF_TYPE_NORMAL _UIActivityGroupListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$(_LOGOS_SELF_TYPE_NORMAL UIActivityGroupViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBarBackground, @selector(configureEffectForStyle:backgroundTintColor:forceOpaque:), (IMP)&_logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$, (IMP*)&_logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$);}Class _logos_class$_ungrouped$_UIVisualEffectFilterView = objc_getClass("_UIVisualEffectFilterView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIVisualEffectFilterView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$);}Class _logos_class$_ungrouped$_UIActivityGroupListViewController = objc_getClass("_UIActivityGroupListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$_UIActivityGroupListViewController, @selector(setDarkStyleOnLegacyApp:), (IMP)&_logos_method$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$, (IMP*)&_logos_orig$_ungrouped$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$);}Class _logos_class$_ungrouped$UIActivityGroupViewController = objc_getClass("UIActivityGroupViewController"); { MSHookMessageEx(_logos_class$_ungrouped$UIActivityGroupViewController, @selector(setDarkStyleOnLegacyApp:), (IMP)&_logos_method$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$, (IMP*)&_logos_orig$_ungrouped$UIActivityGroupViewController$setDarkStyleOnLegacyApp$);}} }
#line 33 "Tweak.xm"
