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

@class ChatViewController; @class AdMarvelUtilities; 
static AdMarvelUtilities* (*_logos_orig$_ungrouped$AdMarvelUtilities$init)(_LOGOS_SELF_TYPE_INIT AdMarvelUtilities*, SEL) _LOGOS_RETURN_RETAINED; static AdMarvelUtilities* _logos_method$_ungrouped$AdMarvelUtilities$init(_LOGOS_SELF_TYPE_INIT AdMarvelUtilities*, SEL) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$ChatViewController$shouldShowFooterAd)(_LOGOS_SELF_TYPE_NORMAL ChatViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ChatViewController$shouldShowFooterAd(_LOGOS_SELF_TYPE_NORMAL ChatViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static AdMarvelUtilities* _logos_method$_ungrouped$AdMarvelUtilities$init(_LOGOS_SELF_TYPE_INIT AdMarvelUtilities* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_method$_ungrouped$ChatViewController$shouldShowFooterAd(_LOGOS_SELF_TYPE_NORMAL ChatViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AdMarvelUtilities = objc_getClass("AdMarvelUtilities"); { MSHookMessageEx(_logos_class$_ungrouped$AdMarvelUtilities, @selector(init), (IMP)&_logos_method$_ungrouped$AdMarvelUtilities$init, (IMP*)&_logos_orig$_ungrouped$AdMarvelUtilities$init);}Class _logos_class$_ungrouped$ChatViewController = objc_getClass("ChatViewController"); { MSHookMessageEx(_logos_class$_ungrouped$ChatViewController, @selector(shouldShowFooterAd), (IMP)&_logos_method$_ungrouped$ChatViewController$shouldShowFooterAd, (IMP*)&_logos_orig$_ungrouped$ChatViewController$shouldShowFooterAd);}} }
#line 15 "Tweak.xm"
