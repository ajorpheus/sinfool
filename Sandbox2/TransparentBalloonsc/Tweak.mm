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

@class CKTextMessagePartChatItem; @class CKColoredBalloonView; 
static id (*_logos_orig$_ungrouped$CKTextMessagePartChatItem$_attributedTextWithTextColor$)(_LOGOS_SELF_TYPE_NORMAL CKTextMessagePartChatItem* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$CKTextMessagePartChatItem$_attributedTextWithTextColor$(_LOGOS_SELF_TYPE_NORMAL CKTextMessagePartChatItem* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CKColoredBalloonView$wantsGradient)(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKColoredBalloonView$wantsGradient(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CKTextMessagePartChatItem$_attributedTextWithTextColor$(_LOGOS_SELF_TYPE_NORMAL CKTextMessagePartChatItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}



static bool _logos_method$_ungrouped$CKColoredBalloonView$wantsGradient(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKTextMessagePartChatItem = objc_getClass("CKTextMessagePartChatItem"); { MSHookMessageEx(_logos_class$_ungrouped$CKTextMessagePartChatItem, @selector(_attributedTextWithTextColor:), (IMP)&_logos_method$_ungrouped$CKTextMessagePartChatItem$_attributedTextWithTextColor$, (IMP*)&_logos_orig$_ungrouped$CKTextMessagePartChatItem$_attributedTextWithTextColor$);}Class _logos_class$_ungrouped$CKColoredBalloonView = objc_getClass("CKColoredBalloonView"); { MSHookMessageEx(_logos_class$_ungrouped$CKColoredBalloonView, @selector(wantsGradient), (IMP)&_logos_method$_ungrouped$CKColoredBalloonView$wantsGradient, (IMP*)&_logos_orig$_ungrouped$CKColoredBalloonView$wantsGradient);}} }
#line 16 "Tweak.xm"
