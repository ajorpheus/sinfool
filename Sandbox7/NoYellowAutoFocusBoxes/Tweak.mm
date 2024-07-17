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

@class CAMPreviewViewController; @class CAMFocusIndicatorRectView; 
static CAMFocusIndicatorRectView* (*_logos_orig$_ungrouped$CAMFocusIndicatorRectView$initWithSize$)(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView*, SEL, long long) _LOGOS_RETURN_RETAINED; static CAMFocusIndicatorRectView* _logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView*, SEL, long long) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView)(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static CAMFocusIndicatorRectView* _logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMFocusIndicatorRectView = objc_getClass("CAMFocusIndicatorRectView"); { MSHookMessageEx(_logos_class$_ungrouped$CAMFocusIndicatorRectView, @selector(initWithSize:), (IMP)&_logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$, (IMP*)&_logos_orig$_ungrouped$CAMFocusIndicatorRectView$initWithSize$);}Class _logos_class$_ungrouped$CAMPreviewViewController = objc_getClass("CAMPreviewViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMPreviewViewController, @selector(_showExposureBiasSliderForPointView), (IMP)&_logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView, (IMP*)&_logos_orig$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView);}} }
#line 17 "Tweak.xm"
