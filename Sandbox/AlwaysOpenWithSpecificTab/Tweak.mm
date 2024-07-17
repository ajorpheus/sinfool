#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PhoneTabBarController$switchToTab$)(id, SEL, int);
static void _patched_ftt_meth_$PhoneTabBarController$switchToTab$(id self, SEL _cmd, int arg1) {
    // Set Tab To Open With...  {1=Favorites, 2=Recents, 3=Contacts, 4=Keypad, 5=Voicemail}
    arg1 = 2;
    _orig_ftt_meth_$PhoneTabBarController$switchToTab$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PhoneTabBarController = objc_getClass("PhoneTabBarController");
    MSHookMessageEx(_ftt_class_PhoneTabBarController, @selector(switchToTab:), (IMP)_patched_ftt_meth_$PhoneTabBarController$switchToTab$, (IMP *)_orig_ftt_meth_$PhoneTabBarController$switchToTab$);
}
