#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$UIKeyboardAssistantBar$assistantBarHeight(id self, SEL _cmd) {
    // Hide Predictive Bar
    return 0;
}

static float _patched_ftt_meth_$UIKeyboardAssistantBar$sideBarWidth(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$CKUIBehavior$canShowContactPhotosInConversationList(id self, SEL _cmd) {
    return 1;
}

static int _patched_ftt_meth_$UIDevice$userInterfaceIdiom(id self, SEL _cmd) {
    return 1;
}

static int _patched_ftt_meth_$UITextInputTraits$keyboardAppearance(id self, SEL _cmd) {
    return 0;
}

static int _patched_ftt_meth_$UIKeyboardEmojiCollectionViewCell$emojiFontSize(id self, SEL _cmd) {
    return 30;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardAssistantBar = objc_getClass("UIKeyboardAssistantBar");
    MSHookMessageEx(_ftt_class_UIKeyboardAssistantBar, @selector(assistantBarHeight), (IMP)_patched_ftt_meth_$UIKeyboardAssistantBar$assistantBarHeight, NULL);
    MSHookMessageEx(_ftt_class_UIKeyboardAssistantBar, @selector(sideBarWidth), (IMP)_patched_ftt_meth_$UIKeyboardAssistantBar$sideBarWidth, NULL);
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(canShowContactPhotosInConversationList), (IMP)_patched_ftt_meth_$CKUIBehavior$canShowContactPhotosInConversationList, NULL);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(userInterfaceIdiom), (IMP)_patched_ftt_meth_$UIDevice$userInterfaceIdiom, NULL);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(keyboardAppearance), (IMP)_patched_ftt_meth_$UITextInputTraits$keyboardAppearance, NULL);
    Class _ftt_class_UIKeyboardEmojiCollectionViewCell = objc_getClass("UIKeyboardEmojiCollectionViewCell");
    MSHookMessageEx(_ftt_class_UIKeyboardEmojiCollectionViewCell, @selector(emojiFontSize), (IMP)_patched_ftt_meth_$UIKeyboardEmojiCollectionViewCell$emojiFontSize, NULL);
}
