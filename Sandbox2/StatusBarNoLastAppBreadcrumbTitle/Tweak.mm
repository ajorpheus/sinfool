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

@class UIStatusBarBreadcrumbItemView; 
static id (*_logos_orig$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBreadcrumbItemView* _LOGOS_SELF_CONST, SEL, int); static id _logos_method$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBreadcrumbItemView* _LOGOS_SELF_CONST, SEL, int); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBreadcrumbItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    arg1 = 1;
    return _logos_orig$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarBreadcrumbItemView = objc_getClass("UIStatusBarBreadcrumbItemView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBreadcrumbItemView, @selector(shortenedTitleWithCompressionLevel:), (IMP)&_logos_method$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$);}} }
#line 10 "Tweak.xm"
