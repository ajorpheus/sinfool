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

@class CKMessagePartChatItem; @class CKColoredBalloonView; 
static BOOL (*_logos_orig$_ungrouped$CKMessagePartChatItem$color)(_LOGOS_SELF_TYPE_NORMAL CKMessagePartChatItem* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$CKMessagePartChatItem$color(_LOGOS_SELF_TYPE_NORMAL CKMessagePartChatItem* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CKColoredBalloonView$wantsGradient)(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKColoredBalloonView$wantsGradient(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$CKMessagePartChatItem$color(_LOGOS_SELF_TYPE_NORMAL CKMessagePartChatItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CKColoredBalloonView$wantsGradient(_LOGOS_SELF_TYPE_NORMAL CKColoredBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKMessagePartChatItem = objc_getClass("CKMessagePartChatItem"); { MSHookMessageEx(_logos_class$_ungrouped$CKMessagePartChatItem, @selector(color), (IMP)&_logos_method$_ungrouped$CKMessagePartChatItem$color, (IMP*)&_logos_orig$_ungrouped$CKMessagePartChatItem$color);}Class _logos_class$_ungrouped$CKColoredBalloonView = objc_getClass("CKColoredBalloonView"); { MSHookMessageEx(_logos_class$_ungrouped$CKColoredBalloonView, @selector(wantsGradient), (IMP)&_logos_method$_ungrouped$CKColoredBalloonView$wantsGradient, (IMP*)&_logos_orig$_ungrouped$CKColoredBalloonView$wantsGradient);}} }
#line 16 "Tweak.xm"
