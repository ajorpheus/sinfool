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

@class ABContactViewController; @class PhoneTabBarController; @class PHFavoritesViewController; 
static void (*_logos_orig$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$)(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL, bool, bool, bool, bool, bool); static void _logos_method$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL, bool, bool, bool, bool, bool); static int (*_logos_orig$_ungrouped$PhoneTabBarController$defaultTabViewType)(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$PhoneTabBarController$defaultTabViewType(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsSendMessage)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsSendMessage(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsSharing)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsSharing(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsContactBlocking)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsContactBlocking(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PHFavoritesViewController$tableView$canEditRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL PHFavoritesViewController* _LOGOS_SELF_CONST, SEL, id, id); static bool _logos_method$_ungrouped$PHFavoritesViewController$tableView$canEditRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PHFavoritesViewController* _LOGOS_SELF_CONST, SEL, id, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2, bool arg3, bool arg4, bool arg5) {
    
    arg1 = 1;
    arg2 = 0;
    arg3 = 0;
    arg4 = 0;
    arg5 = 0;
    _logos_orig$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}



static int _logos_method$_ungrouped$PhoneTabBarController$defaultTabViewType(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$ABContactViewController$allowsSendMessage(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$ABContactViewController$allowsSharing(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$ABContactViewController$allowsContactBlocking(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PHFavoritesViewController$tableView$canEditRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PHFavoritesViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PhoneTabBarController = objc_getClass("PhoneTabBarController"); { MSHookMessageEx(_logos_class$_ungrouped$PhoneTabBarController, @selector(showFavoritesTab:recentsTab:contactsTab:keypadTab:voicemailTab:), (IMP)&_logos_method$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$, (IMP*)&_logos_orig$_ungrouped$PhoneTabBarController$showFavoritesTab$recentsTab$contactsTab$keypadTab$voicemailTab$);}{ MSHookMessageEx(_logos_class$_ungrouped$PhoneTabBarController, @selector(defaultTabViewType), (IMP)&_logos_method$_ungrouped$PhoneTabBarController$defaultTabViewType, (IMP*)&_logos_orig$_ungrouped$PhoneTabBarController$defaultTabViewType);}Class _logos_class$_ungrouped$ABContactViewController = objc_getClass("ABContactViewController"); { MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsSendMessage), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsSendMessage, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsSendMessage);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsSharing), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsSharing, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsSharing);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsContactBlocking), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsContactBlocking, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsContactBlocking);}Class _logos_class$_ungrouped$PHFavoritesViewController = objc_getClass("PHFavoritesViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PHFavoritesViewController, @selector(tableView:canEditRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$PHFavoritesViewController$tableView$canEditRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$PHFavoritesViewController$tableView$canEditRowAtIndexPath$);}} }
#line 50 "Tweak.xm"
