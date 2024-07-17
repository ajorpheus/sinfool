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

@class ABContactViewController; 
static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsEditing)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsEditing(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsSendMessage)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsSendMessage(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsSharing)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsSharing(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsContactBlocking)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsContactBlocking(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$ABContactViewController$allowsAddToFavorites)(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABContactViewController$allowsAddToFavorites(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$ABContactViewController$allowsEditing(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
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



static bool _logos_method$_ungrouped$ABContactViewController$allowsAddToFavorites(_LOGOS_SELF_TYPE_NORMAL ABContactViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ABContactViewController = objc_getClass("ABContactViewController"); { MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsEditing), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsEditing, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsEditing);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsSendMessage), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsSendMessage, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsSendMessage);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsSharing), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsSharing, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsSharing);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsContactBlocking), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsContactBlocking, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsContactBlocking);}{ MSHookMessageEx(_logos_class$_ungrouped$ABContactViewController, @selector(allowsAddToFavorites), (IMP)&_logos_method$_ungrouped$ABContactViewController$allowsAddToFavorites, (IMP*)&_logos_orig$_ungrouped$ABContactViewController$allowsAddToFavorites);}} }
#line 33 "Tweak.xm"
