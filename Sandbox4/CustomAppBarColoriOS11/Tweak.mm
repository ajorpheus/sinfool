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

@class CKBrowserPluginCell; @class CKBrowserSwitcherFooterView; 
static void (*_logos_orig$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CKBrowserPluginCell$setSelected$)(_LOGOS_SELF_TYPE_NORMAL CKBrowserPluginCell* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CKBrowserPluginCell$setSelected$(_LOGOS_SELF_TYPE_NORMAL CKBrowserPluginCell* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:25/255.0 green:25/255.0 blue:25/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CKBrowserPluginCell$setSelected$(_LOGOS_SELF_TYPE_NORMAL CKBrowserPluginCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$CKBrowserPluginCell$setSelected$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKBrowserSwitcherFooterView = objc_getClass("CKBrowserSwitcherFooterView"); { MSHookMessageEx(_logos_class$_ungrouped$CKBrowserSwitcherFooterView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CKBrowserSwitcherFooterView$setBackgroundColor$);}Class _logos_class$_ungrouped$CKBrowserPluginCell = objc_getClass("CKBrowserPluginCell"); { MSHookMessageEx(_logos_class$_ungrouped$CKBrowserPluginCell, @selector(setSelected:), (IMP)&_logos_method$_ungrouped$CKBrowserPluginCell$setSelected$, (IMP*)&_logos_orig$_ungrouped$CKBrowserPluginCell$setSelected$);}} }
#line 18 "Tweak.xm"
