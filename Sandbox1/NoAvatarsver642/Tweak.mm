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

@class TFNTwitterAccount; @class TFNTwitterAvatarImageView; 
static bool (*_logos_orig$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar)(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar)(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST, SEL); static TFNTwitterAvatarImageView* (*_logos_orig$_ungrouped$TFNTwitterAvatarImageView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT TFNTwitterAvatarImageView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static TFNTwitterAvatarImageView* _logos_method$_ungrouped$TFNTwitterAvatarImageView$initWithFrame$(_LOGOS_SELF_TYPE_INIT TFNTwitterAvatarImageView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar(_LOGOS_SELF_TYPE_NORMAL TFNTwitterAccount* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static TFNTwitterAvatarImageView* _logos_method$_ungrouped$TFNTwitterAvatarImageView$initWithFrame$(_LOGOS_SELF_TYPE_INIT TFNTwitterAvatarImageView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TFNTwitterAccount = objc_getClass("TFNTwitterAccount"); { MSHookMessageEx(_logos_class$_ungrouped$TFNTwitterAccount, @selector(isInTweetLayoutExperimentMediaFirstWithSmallerAvatar), (IMP)&_logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar, (IMP*)&_logos_orig$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar);}{ MSHookMessageEx(_logos_class$_ungrouped$TFNTwitterAccount, @selector(isInTweetLayoutExperimentSmallerAvatar), (IMP)&_logos_method$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar, (IMP*)&_logos_orig$_ungrouped$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar);}Class _logos_class$_ungrouped$TFNTwitterAvatarImageView = objc_getClass("TFNTwitterAvatarImageView"); { MSHookMessageEx(_logos_class$_ungrouped$TFNTwitterAvatarImageView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$TFNTwitterAvatarImageView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$TFNTwitterAvatarImageView$initWithFrame$);}} }
#line 21 "Tweak.xm"
