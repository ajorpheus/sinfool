#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKUIBehavior$canShowContactPhotosInConversationList(id self, SEL _cmd) {
    // Conversation List
    return 0;
}

static bool _patched_ftt_meth_$CKUIBehaviorPad$canShowContactPhotosInConversationList(id self, SEL _cmd) {
    // Conversation List
    return 0;
}

static bool _patched_ftt_meth_$CKFullScreenAppNavbarManager$_canShowAvatarView(id self, SEL _cmd) {
    // Nav Bar
    return 0;
}

static bool _patched_ftt_meth_$CKNavbarCanvasViewController$_canShowAvatarView(id self, SEL _cmd) {
    // Nav Bar
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(canShowContactPhotosInConversationList), (IMP)_patched_ftt_meth_$CKUIBehavior$canShowContactPhotosInConversationList, NULL);
    Class _ftt_class_CKUIBehaviorPad = objc_getClass("CKUIBehaviorPad");
    MSHookMessageEx(_ftt_class_CKUIBehaviorPad, @selector(canShowContactPhotosInConversationList), (IMP)_patched_ftt_meth_$CKUIBehaviorPad$canShowContactPhotosInConversationList, NULL);
    Class _ftt_class_CKFullScreenAppNavbarManager = objc_getClass("CKFullScreenAppNavbarManager");
    MSHookMessageEx(_ftt_class_CKFullScreenAppNavbarManager, @selector(_canShowAvatarView), (IMP)_patched_ftt_meth_$CKFullScreenAppNavbarManager$_canShowAvatarView, NULL);
    Class _ftt_class_CKNavbarCanvasViewController = objc_getClass("CKNavbarCanvasViewController");
    MSHookMessageEx(_ftt_class_CKNavbarCanvasViewController, @selector(_canShowAvatarView), (IMP)_patched_ftt_meth_$CKNavbarCanvasViewController$_canShowAvatarView, NULL);
}
