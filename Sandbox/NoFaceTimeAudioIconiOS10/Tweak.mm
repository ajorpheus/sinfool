#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKDetailsContactsManager$_isFaceTimeAudioAvailable(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKDetailsContactsManager = objc_getClass("CKDetailsContactsManager");
    MSHookMessageEx(_ftt_class_CKDetailsContactsManager, @selector(_isFaceTimeAudioAvailable), (IMP)_patched_ftt_meth_$CKDetailsContactsManager$_isFaceTimeAudioAvailable, NULL);
}
