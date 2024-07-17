#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$)(id, SEL, bool, bool, bool, bool, bool);
static void _patched_ftt_meth_$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$(id self, SEL _cmd, bool arg1, bool arg2, bool arg3, bool arg4, bool arg5) {
    // •
    arg1 = 1;
    arg2 = 0;
    arg3 = 0;
    arg4 = 0;
    arg5 = 0;
    _orig_ftt_meth_$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static int _patched_ftt_meth_$PhoneTabBarController$defaultTabViewType(id self, SEL _cmd) {
    // •
    return 1;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsSendMessage(id self, SEL _cmd) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsSharing(id self, SEL _cmd) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsContactBlocking(id self, SEL _cmd) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$PHFavoritesViewController$tableView$canEditRowAtIndexPath$(id self, SEL _cmd, id arg1, id arg2) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PhoneTabBarController = objc_getClass("PhoneTabBarController");
    MSHookMessageEx(_ftt_class_PhoneTabBarController, @selector(showFavoritesTab:recentsTab:contactsTab:keypadTab:voicemailTab:), (IMP)_patched_ftt_meth_$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$, (IMP *)_orig_ftt_meth_$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$);
    MSHookMessageEx(_ftt_class_PhoneTabBarController, @selector(defaultTabViewType), (IMP)_patched_ftt_meth_$PhoneTabBarController$defaultTabViewType, NULL);
    Class _ftt_class_ABContactViewController = objc_getClass("ABContactViewController");
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsSendMessage), (IMP)_patched_ftt_meth_$ABContactViewController$allowsSendMessage, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsSharing), (IMP)_patched_ftt_meth_$ABContactViewController$allowsSharing, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsContactBlocking), (IMP)_patched_ftt_meth_$ABContactViewController$allowsContactBlocking, NULL);
    Class _ftt_class_PHFavoritesViewController = objc_getClass("PHFavoritesViewController");
    MSHookMessageEx(_ftt_class_PHFavoritesViewController, @selector(tableView:canEditRowAtIndexPath:), (IMP)_patched_ftt_meth_$PHFavoritesViewController$tableView$canEditRowAtIndexPath$, NULL);
}
