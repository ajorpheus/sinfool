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

@class CKUIBehavior; @class UIKeyboardEmojiCollectionViewCell; @class UITextInputTraits; @class UIDevice; @class UIKeyboardAssistantBar; 
static float (*_logos_orig$_ungrouped$UIKeyboardAssistantBar$assistantBarHeight)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$UIKeyboardAssistantBar$assistantBarHeight(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$UIKeyboardAssistantBar$sideBarWidth)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$UIKeyboardAssistantBar$sideBarWidth(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UIDevice$userInterfaceIdiom)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIDevice$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UITextInputTraits$keyboardAppearance)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UITextInputTraits$keyboardAppearance(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UIKeyboardEmojiCollectionViewCell$emojiFontSize)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardEmojiCollectionViewCell* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIKeyboardEmojiCollectionViewCell$emojiFontSize(_LOGOS_SELF_TYPE_NORMAL UIKeyboardEmojiCollectionViewCell* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static float _logos_method$_ungrouped$UIKeyboardAssistantBar$assistantBarHeight(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static float _logos_method$_ungrouped$UIKeyboardAssistantBar$sideBarWidth(_LOGOS_SELF_TYPE_NORMAL UIKeyboardAssistantBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static int _logos_method$_ungrouped$UIDevice$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static int _logos_method$_ungrouped$UITextInputTraits$keyboardAppearance(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static int _logos_method$_ungrouped$UIKeyboardEmojiCollectionViewCell$emojiFontSize(_LOGOS_SELF_TYPE_NORMAL UIKeyboardEmojiCollectionViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 30;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardAssistantBar = objc_getClass("UIKeyboardAssistantBar"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardAssistantBar, @selector(assistantBarHeight), (IMP)&_logos_method$_ungrouped$UIKeyboardAssistantBar$assistantBarHeight, (IMP*)&_logos_orig$_ungrouped$UIKeyboardAssistantBar$assistantBarHeight);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardAssistantBar, @selector(sideBarWidth), (IMP)&_logos_method$_ungrouped$UIKeyboardAssistantBar$sideBarWidth, (IMP*)&_logos_orig$_ungrouped$UIKeyboardAssistantBar$sideBarWidth);}Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(canShowContactPhotosInConversationList), (IMP)&_logos_method$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$canShowContactPhotosInConversationList);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(userInterfaceIdiom), (IMP)&_logos_method$_ungrouped$UIDevice$userInterfaceIdiom, (IMP*)&_logos_orig$_ungrouped$UIDevice$userInterfaceIdiom);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(keyboardAppearance), (IMP)&_logos_method$_ungrouped$UITextInputTraits$keyboardAppearance, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$keyboardAppearance);}Class _logos_class$_ungrouped$UIKeyboardEmojiCollectionViewCell = objc_getClass("UIKeyboardEmojiCollectionViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardEmojiCollectionViewCell, @selector(emojiFontSize), (IMP)&_logos_method$_ungrouped$UIKeyboardEmojiCollectionViewCell$emojiFontSize, (IMP*)&_logos_orig$_ungrouped$UIKeyboardEmojiCollectionViewCell$emojiFontSize);}} }
#line 40 "Tweak.xm"
