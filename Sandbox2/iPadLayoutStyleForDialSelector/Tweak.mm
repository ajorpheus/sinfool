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

@class CAMFlipButton; @class CAMModeDial; @class CAMViewfinderViewController; 
static long long (*_logos_orig$_ungrouped$CAMViewfinderViewController$_topBarBackgroundStyleForMode$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static long long _logos_method$_ungrouped$CAMViewfinderViewController$_topBarBackgroundStyleForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static long long (*_logos_orig$_ungrouped$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static long long _logos_method$_ungrouped$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$CAMModeDial$setLayoutStyle$)(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$CAMModeDial$setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$CAMFlipButton$setLayoutStyle$)(_LOGOS_SELF_TYPE_NORMAL CAMFlipButton* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$CAMFlipButton$setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMFlipButton* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$CAMViewfinderViewController$_topBarBackgroundStyleForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static long long _logos_method$_ungrouped$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static void _logos_method$_ungrouped$CAMModeDial$setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$CAMModeDial$setLayoutStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CAMFlipButton$setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMFlipButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$CAMFlipButton$setLayoutStyle$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_topBarBackgroundStyleForMode:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_topBarBackgroundStyleForMode$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_topBarBackgroundStyleForMode$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_bottomBarBackgroundStyleForMode:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$);}Class _logos_class$_ungrouped$CAMModeDial = objc_getClass("CAMModeDial"); { MSHookMessageEx(_logos_class$_ungrouped$CAMModeDial, @selector(setLayoutStyle:), (IMP)&_logos_method$_ungrouped$CAMModeDial$setLayoutStyle$, (IMP*)&_logos_orig$_ungrouped$CAMModeDial$setLayoutStyle$);}Class _logos_class$_ungrouped$CAMFlipButton = objc_getClass("CAMFlipButton"); { MSHookMessageEx(_logos_class$_ungrouped$CAMFlipButton, @selector(setLayoutStyle:), (IMP)&_logos_method$_ungrouped$CAMFlipButton$setLayoutStyle$, (IMP*)&_logos_orig$_ungrouped$CAMFlipButton$setLayoutStyle$);}} }
#line 33 "Tweak.xm"
