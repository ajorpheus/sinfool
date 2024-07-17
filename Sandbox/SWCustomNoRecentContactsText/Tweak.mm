#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBAppSwitcherSettings$peopleNumberOfRecents(id self, SEL _cmd) {
    // •
    return 0;
}

static id (*_orig_ftt_meth_$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$)(id, SEL, id);
static id _patched_ftt_meth_$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$(id self, SEL _cmd, id arg1) {
    // Set Text...
    arg1 = @"Flex 2";
    return _orig_ftt_meth_$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(peopleNumberOfRecents), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$peopleNumberOfRecents, NULL);
    Class _ftt_class_SBAppSwitcherPeopleScrollView = objc_getClass("SBAppSwitcherPeopleScrollView");
    MSHookMessageEx(_ftt_class_SBAppSwitcherPeopleScrollView, @selector(_labelImageParametersForLabelString:), (IMP)_patched_ftt_meth_$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$, (IMP *)_orig_ftt_meth_$SBAppSwitcherPeopleScrollView$_labelImageParametersForLabelString$);
}
