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

@class CKBalloonChatItem; @class CKImageBalloonView; @class CKUIBehavior; 
static unsigned long long (*_logos_orig$_ungrouped$CKBalloonChatItem$balloonCorners)(_LOGOS_SELF_TYPE_NORMAL CKBalloonChatItem* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$CKBalloonChatItem$balloonCorners(_LOGOS_SELF_TYPE_NORMAL CKBalloonChatItem* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$CKUIBehavior$balloonMaskTailWidth)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKImageBalloonView$setHasTail$)(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CKImageBalloonView$setHasTail$(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$CKBalloonChatItem$balloonCorners(_LOGOS_SELF_TYPE_NORMAL CKBalloonChatItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$CKImageBalloonView$setHasTail$(_LOGOS_SELF_TYPE_NORMAL CKImageBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$CKImageBalloonView$setHasTail$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKBalloonChatItem = objc_getClass("CKBalloonChatItem"); { MSHookMessageEx(_logos_class$_ungrouped$CKBalloonChatItem, @selector(balloonCorners), (IMP)&_logos_method$_ungrouped$CKBalloonChatItem$balloonCorners, (IMP*)&_logos_orig$_ungrouped$CKBalloonChatItem$balloonCorners);}Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(balloonMaskTailWidth), (IMP)&_logos_method$_ungrouped$CKUIBehavior$balloonMaskTailWidth, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$balloonMaskTailWidth);}Class _logos_class$_ungrouped$CKImageBalloonView = objc_getClass("CKImageBalloonView"); { MSHookMessageEx(_logos_class$_ungrouped$CKImageBalloonView, @selector(setHasTail:), (IMP)&_logos_method$_ungrouped$CKImageBalloonView$setHasTail$, (IMP*)&_logos_orig$_ungrouped$CKImageBalloonView$setHasTail$);}} }
#line 25 "Tweak.xm"
