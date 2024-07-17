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

@class SBDefaultBannerView; 
static bool (*_logos_orig$_ungrouped$SBDefaultBannerView$_showAttachmentPreview)(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDefaultBannerView$_showAttachmentPreview(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBDefaultBannerView$_showAttachmentPreview(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDefaultBannerView = objc_getClass("SBDefaultBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDefaultBannerView, @selector(_showAttachmentPreview), (IMP)&_logos_method$_ungrouped$SBDefaultBannerView$_showAttachmentPreview, (IMP*)&_logos_orig$_ungrouped$SBDefaultBannerView$_showAttachmentPreview);}} }
#line 9 "Tweak.xm"