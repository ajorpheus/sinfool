#import <UIKit/UIKit.h>

#include <substrate.h>

static void _patched_ftt_meth_$NCNotificationShortLookView$setPrimarySubtitleText$(id self, SEL _cmd, id arg1) {
    // Primary Subtitle Text: (Default=No Text, Set Custom Text=Override Type:NSString or Stock Text=D)
}

static void (*_orig_ftt_meth_$NCNotificationShortLookView$setSecondaryText$)(id, SEL, id);
static void _patched_ftt_meth_$NCNotificationShortLookView$setSecondaryText$(id self, SEL _cmd, id arg1) {
    // Secondary Text (Preview/Body/iMessage Text etc): (Default="New Notification" Text, Set Custom Text=Override Type:NSString or Stock Text=D)
    arg1 = @"New Notification ";
    _orig_ftt_meth_$NCNotificationShortLookView$setSecondaryText$(self, _cmd, arg1);
}

static void _patched_ftt_meth_$NCNotificationShortLookView$setHintText$(id self, SEL _cmd, id arg1) {
    // Hint Text: (Slide for more/Unlock for more etc): (Default=No Text, Set Custom Text=Override Type:NSString or Stock Text=D)
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCNotificationShortLookView = objc_getClass("NCNotificationShortLookView");
    MSHookMessageEx(_ftt_class_NCNotificationShortLookView, @selector(setPrimarySubtitleText:), (IMP)_patched_ftt_meth_$NCNotificationShortLookView$setPrimarySubtitleText$, NULL);
    MSHookMessageEx(_ftt_class_NCNotificationShortLookView, @selector(setSecondaryText:), (IMP)_patched_ftt_meth_$NCNotificationShortLookView$setSecondaryText$, (IMP *)_orig_ftt_meth_$NCNotificationShortLookView$setSecondaryText$);
    MSHookMessageEx(_ftt_class_NCNotificationShortLookView, @selector(setHintText:), (IMP)_patched_ftt_meth_$NCNotificationShortLookView$setHintText$, NULL);
}
