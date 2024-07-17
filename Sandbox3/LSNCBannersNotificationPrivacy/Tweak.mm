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

@class NCNotificationShortLookView; 
static void (*_logos_orig$_ungrouped$NCNotificationShortLookView$setPrimarySubtitleText$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$NCNotificationShortLookView$setPrimarySubtitleText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$NCNotificationShortLookView$setSecondaryText$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$NCNotificationShortLookView$setSecondaryText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$NCNotificationShortLookView$setHintText$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$NCNotificationShortLookView$setHintText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$NCNotificationShortLookView$setPrimarySubtitleText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
}



static void _logos_method$_ungrouped$NCNotificationShortLookView$setSecondaryText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = @"New Notification ";
    _logos_orig$_ungrouped$NCNotificationShortLookView$setSecondaryText$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCNotificationShortLookView$setHintText$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCNotificationShortLookView = objc_getClass("NCNotificationShortLookView"); { MSHookMessageEx(_logos_class$_ungrouped$NCNotificationShortLookView, @selector(setPrimarySubtitleText:), (IMP)&_logos_method$_ungrouped$NCNotificationShortLookView$setPrimarySubtitleText$, (IMP*)&_logos_orig$_ungrouped$NCNotificationShortLookView$setPrimarySubtitleText$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCNotificationShortLookView, @selector(setSecondaryText:), (IMP)&_logos_method$_ungrouped$NCNotificationShortLookView$setSecondaryText$, (IMP*)&_logos_orig$_ungrouped$NCNotificationShortLookView$setSecondaryText$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCNotificationShortLookView, @selector(setHintText:), (IMP)&_logos_method$_ungrouped$NCNotificationShortLookView$setHintText$, (IMP*)&_logos_orig$_ungrouped$NCNotificationShortLookView$setHintText$);}} }
#line 23 "Tweak.xm"
