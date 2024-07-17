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

@class CKBalloonView; @class CKUIBehavior; @class CKImageBalloonView; 
static unsigned long long (*_logos_orig$_ungrouped$CKBalloonView$balloonCorners)(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$CKBalloonView$balloonCorners(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$CKUIBehavior$balloonMaskTailWidth)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKImageBalloonView$tailMask)(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKImageBalloonView$tailMask(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$CKBalloonView$balloonCorners(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static double _logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static id _logos_method$_ungrouped$CKImageBalloonView$tailMask(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKBalloonView = objc_getClass("CKBalloonView"); { MSHookMessageEx(_logos_class$_ungrouped$CKBalloonView, @selector(balloonCorners), (IMP)&_logos_method$_ungrouped$CKBalloonView$balloonCorners, (IMP*)&_logos_orig$_ungrouped$CKBalloonView$balloonCorners);}Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(balloonMaskTailWidth), (IMP)&_logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$balloonMaskTailWidth);}Class _logos_class$_ungrouped$CKImageBalloonView = objc_getClass("CKImageBalloonView"); { MSHookMessageEx(_logos_class$_ungrouped$CKImageBalloonView, @selector(tailMask), (IMP)&_logos_method$_ungrouped$CKImageBalloonView$tailMask, (IMP*)&_logos_orig$_ungrouped$CKImageBalloonView$tailMask);}} }
#line 21 "Tweak.xm"
