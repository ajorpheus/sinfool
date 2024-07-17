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

@class CKNavbarCanvasViewController; @class CKUIBehaviorPad; @class CKFullScreenAppNavbarManager; @class CKUIBehavior; 
static bool (*_logos_orig$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CKUIBehaviorPad$canShowContactPhotosInConversationList)(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPad* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKUIBehaviorPad$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPad* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CKFullScreenAppNavbarManager$_canShowAvatarView)(_LOGOS_SELF_TYPE_NORMAL CKFullScreenAppNavbarManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKFullScreenAppNavbarManager$_canShowAvatarView(_LOGOS_SELF_TYPE_NORMAL CKFullScreenAppNavbarManager* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CKNavbarCanvasViewController$_canShowAvatarView)(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKNavbarCanvasViewController$_canShowAvatarView(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CKUIBehaviorPad$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CKFullScreenAppNavbarManager$_canShowAvatarView(_LOGOS_SELF_TYPE_NORMAL CKFullScreenAppNavbarManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CKNavbarCanvasViewController$_canShowAvatarView(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(canShowContactPhotosInConversationList), (IMP)&_logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList);}Class _logos_class$_ungrouped$CKUIBehaviorPad = objc_getClass("CKUIBehaviorPad"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehaviorPad, @selector(canShowContactPhotosInConversationList), (IMP)&_logos_method$_ungrouped$CKUIBehaviorPad$canShowContactPhotosInConversationList, (IMP*)&_logos_orig$_ungrouped$CKUIBehaviorPad$canShowContactPhotosInConversationList);}Class _logos_class$_ungrouped$CKFullScreenAppNavbarManager = objc_getClass("CKFullScreenAppNavbarManager"); { MSHookMessageEx(_logos_class$_ungrouped$CKFullScreenAppNavbarManager, @selector(_canShowAvatarView), (IMP)&_logos_method$_ungrouped$CKFullScreenAppNavbarManager$_canShowAvatarView, (IMP*)&_logos_orig$_ungrouped$CKFullScreenAppNavbarManager$_canShowAvatarView);}Class _logos_class$_ungrouped$CKNavbarCanvasViewController = objc_getClass("CKNavbarCanvasViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CKNavbarCanvasViewController, @selector(_canShowAvatarView), (IMP)&_logos_method$_ungrouped$CKNavbarCanvasViewController$_canShowAvatarView, (IMP*)&_logos_orig$_ungrouped$CKNavbarCanvasViewController$_canShowAvatarView);}} }
#line 31 "Tweak.xm"
