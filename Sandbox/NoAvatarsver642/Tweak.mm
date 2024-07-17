#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$TFNTwitterAvatarImageView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TFNTwitterAccount = objc_getClass("TFNTwitterAccount");
    MSHookMessageEx(_ftt_class_TFNTwitterAccount, @selector(isInTweetLayoutExperimentMediaFirstWithSmallerAvatar), (IMP)_patched_ftt_meth_$TFNTwitterAccount$isInTweetLayoutExperimentMediaFirstWithSmallerAvatar, NULL);
    MSHookMessageEx(_ftt_class_TFNTwitterAccount, @selector(isInTweetLayoutExperimentSmallerAvatar), (IMP)_patched_ftt_meth_$TFNTwitterAccount$isInTweetLayoutExperimentSmallerAvatar, NULL);
    Class _ftt_class_TFNTwitterAvatarImageView = objc_getClass("TFNTwitterAvatarImageView");
    MSHookMessageEx(_ftt_class_TFNTwitterAvatarImageView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$TFNTwitterAvatarImageView$initWithFrame$, NULL);
}
