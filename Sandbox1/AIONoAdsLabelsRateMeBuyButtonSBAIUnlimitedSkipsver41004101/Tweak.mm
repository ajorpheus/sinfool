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

@class UIActivityIndicatorView; @class Configuration; @class CopyrightLabel; @class iRate; 
static BOOL (*_logos_orig$_ungrouped$iRate$shouldPromptForRating)(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$iRate$shouldPromptForRating(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST, SEL); static CopyrightLabel* (*_logos_orig$_ungrouped$CopyrightLabel$initWithFrame$)(_LOGOS_SELF_TYPE_INIT CopyrightLabel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static CopyrightLabel* _logos_method$_ungrouped$CopyrightLabel$initWithFrame$(_LOGOS_SELF_TYPE_INIT CopyrightLabel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$Configuration$isNoSkipLimitEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$isNoSkipLimitEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Configuration$liveRadioVideoAdEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$liveRadioVideoAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Configuration$liveRadioCompanionAdEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$liveRadioCompanionAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Configuration$customRadioVideoAdEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$customRadioVideoAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Configuration$customRadioAudioAdEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$customRadioAudioAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Configuration$customRadioCompanionAdEnabled)(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Configuration$customRadioCompanionAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST, SEL); static UIActivityIndicatorView* (*_logos_orig$_ungrouped$UIActivityIndicatorView$initWithActivityIndicatorStyle$)(_LOGOS_SELF_TYPE_INIT UIActivityIndicatorView*, SEL, long long) _LOGOS_RETURN_RETAINED; static UIActivityIndicatorView* _logos_method$_ungrouped$UIActivityIndicatorView$initWithActivityIndicatorStyle$(_LOGOS_SELF_TYPE_INIT UIActivityIndicatorView*, SEL, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$iRate$shouldPromptForRating(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static CopyrightLabel* _logos_method$_ungrouped$CopyrightLabel$initWithFrame$(_LOGOS_SELF_TYPE_INIT CopyrightLabel* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static BOOL _logos_method$_ungrouped$Configuration$isNoSkipLimitEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$Configuration$liveRadioVideoAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$Configuration$liveRadioCompanionAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$Configuration$customRadioVideoAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$Configuration$customRadioAudioAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$Configuration$customRadioCompanionAdEnabled(_LOGOS_SELF_TYPE_NORMAL Configuration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static UIActivityIndicatorView* _logos_method$_ungrouped$UIActivityIndicatorView$initWithActivityIndicatorStyle$(_LOGOS_SELF_TYPE_INIT UIActivityIndicatorView* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$iRate = objc_getClass("iRate"); { MSHookMessageEx(_logos_class$_ungrouped$iRate, @selector(shouldPromptForRating), (IMP)&_logos_method$_ungrouped$iRate$shouldPromptForRating, (IMP*)&_logos_orig$_ungrouped$iRate$shouldPromptForRating);}Class _logos_class$_ungrouped$CopyrightLabel = objc_getClass("CopyrightLabel"); { MSHookMessageEx(_logos_class$_ungrouped$CopyrightLabel, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$CopyrightLabel$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$CopyrightLabel$initWithFrame$);}Class _logos_class$_ungrouped$Configuration = objc_getClass("Configuration"); { MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(isNoSkipLimitEnabled), (IMP)&_logos_method$_ungrouped$Configuration$isNoSkipLimitEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$isNoSkipLimitEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(liveRadioVideoAdEnabled), (IMP)&_logos_method$_ungrouped$Configuration$liveRadioVideoAdEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$liveRadioVideoAdEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(liveRadioCompanionAdEnabled), (IMP)&_logos_method$_ungrouped$Configuration$liveRadioCompanionAdEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$liveRadioCompanionAdEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(customRadioVideoAdEnabled), (IMP)&_logos_method$_ungrouped$Configuration$customRadioVideoAdEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$customRadioVideoAdEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(customRadioAudioAdEnabled), (IMP)&_logos_method$_ungrouped$Configuration$customRadioAudioAdEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$customRadioAudioAdEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$Configuration, @selector(customRadioCompanionAdEnabled), (IMP)&_logos_method$_ungrouped$Configuration$customRadioCompanionAdEnabled, (IMP*)&_logos_orig$_ungrouped$Configuration$customRadioCompanionAdEnabled);}Class _logos_class$_ungrouped$UIActivityIndicatorView = objc_getClass("UIActivityIndicatorView"); { MSHookMessageEx(_logos_class$_ungrouped$UIActivityIndicatorView, @selector(initWithActivityIndicatorStyle:), (IMP)&_logos_method$_ungrouped$UIActivityIndicatorView$initWithActivityIndicatorStyle$, (IMP*)&_logos_orig$_ungrouped$UIActivityIndicatorView$initWithActivityIndicatorStyle$);}} }
#line 57 "Tweak.xm"
