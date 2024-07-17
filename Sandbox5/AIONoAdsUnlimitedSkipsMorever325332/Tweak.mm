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

@class SongzaPlayerViewController; @class SongzaAdManager; @class TrackTableViewCell; @class SongzaUserSubscription; @class SongzaPlayerViewController_iPad; @class MrLoader; @class SongzaPlayerViewController_iPhone; 
static BOOL (*_logos_orig$_ungrouped$SongzaAdManager$shouldDisplayAds)(_LOGOS_SELF_TYPE_NORMAL SongzaAdManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SongzaAdManager$shouldDisplayAds(_LOGOS_SELF_TYPE_NORMAL SongzaAdManager* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SongzaPlayerViewController_iPad$shouldShowUpsellButton)(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPad* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SongzaPlayerViewController_iPad$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPad* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SongzaPlayerViewController_iPhone$shouldShowUpsellButton)(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPhone* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SongzaPlayerViewController_iPhone$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPhone* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SongzaPlayerViewController$shouldShowUpsellButton)(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SongzaPlayerViewController$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MrLoader$showInView$)(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MrLoader$showInView$(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST, SEL, id); static MrLoader* (*_logos_orig$_ungrouped$MrLoader$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MrLoader*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MrLoader* _logos_method$_ungrouped$MrLoader$initWithFrame$(_LOGOS_SELF_TYPE_INIT MrLoader*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MrLoader$showInView$withOffset$)(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST, SEL, id, CGPoint); static void _logos_method$_ungrouped$MrLoader$showInView$withOffset$(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST, SEL, id, CGPoint); static id (*_logos_meta_orig$_ungrouped$MrLoader$loader)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$MrLoader$loader(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$TrackTableViewCell$buyButton)(_LOGOS_SELF_TYPE_NORMAL TrackTableViewCell* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$TrackTableViewCell$buyButton(_LOGOS_SELF_TYPE_NORMAL TrackTableViewCell* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SongzaUserSubscription$isActive)(_LOGOS_SELF_TYPE_NORMAL SongzaUserSubscription* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SongzaUserSubscription$isActive(_LOGOS_SELF_TYPE_NORMAL SongzaUserSubscription* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$SongzaAdManager$shouldDisplayAds(_LOGOS_SELF_TYPE_NORMAL SongzaAdManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$SongzaPlayerViewController_iPad$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$SongzaPlayerViewController_iPhone$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController_iPhone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$SongzaPlayerViewController$shouldShowUpsellButton(_LOGOS_SELF_TYPE_NORMAL SongzaPlayerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$MrLoader$showInView$(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = NULL;
    _logos_orig$_ungrouped$MrLoader$showInView$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$TrackTableViewCell$buyButton(_LOGOS_SELF_TYPE_NORMAL TrackTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static BOOL _logos_method$_ungrouped$SongzaUserSubscription$isActive(_LOGOS_SELF_TYPE_NORMAL SongzaUserSubscription* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static MrLoader* _logos_method$_ungrouped$MrLoader$initWithFrame$(_LOGOS_SELF_TYPE_INIT MrLoader* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static void _logos_method$_ungrouped$MrLoader$showInView$withOffset$(_LOGOS_SELF_TYPE_NORMAL MrLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, CGPoint arg2) {
    arg1 = NULL;
    _logos_orig$_ungrouped$MrLoader$showInView$withOffset$(self, _cmd, arg1, arg2);
}



static id _logos_meta_method$_ungrouped$MrLoader$loader(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SongzaAdManager = objc_getClass("SongzaAdManager"); { MSHookMessageEx(_logos_class$_ungrouped$SongzaAdManager, @selector(shouldDisplayAds), (IMP)&_logos_method$_ungrouped$SongzaAdManager$shouldDisplayAds, (IMP*)&_logos_orig$_ungrouped$SongzaAdManager$shouldDisplayAds);}Class _logos_class$_ungrouped$SongzaPlayerViewController_iPad = objc_getClass("SongzaPlayerViewController_iPad"); { MSHookMessageEx(_logos_class$_ungrouped$SongzaPlayerViewController_iPad, @selector(shouldShowUpsellButton), (IMP)&_logos_method$_ungrouped$SongzaPlayerViewController_iPad$shouldShowUpsellButton, (IMP*)&_logos_orig$_ungrouped$SongzaPlayerViewController_iPad$shouldShowUpsellButton);}Class _logos_class$_ungrouped$SongzaPlayerViewController_iPhone = objc_getClass("SongzaPlayerViewController_iPhone"); { MSHookMessageEx(_logos_class$_ungrouped$SongzaPlayerViewController_iPhone, @selector(shouldShowUpsellButton), (IMP)&_logos_method$_ungrouped$SongzaPlayerViewController_iPhone$shouldShowUpsellButton, (IMP*)&_logos_orig$_ungrouped$SongzaPlayerViewController_iPhone$shouldShowUpsellButton);}Class _logos_class$_ungrouped$SongzaPlayerViewController = objc_getClass("SongzaPlayerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SongzaPlayerViewController, @selector(shouldShowUpsellButton), (IMP)&_logos_method$_ungrouped$SongzaPlayerViewController$shouldShowUpsellButton, (IMP*)&_logos_orig$_ungrouped$SongzaPlayerViewController$shouldShowUpsellButton);}Class _logos_class$_ungrouped$MrLoader = objc_getClass("MrLoader"); Class _logos_metaclass$_ungrouped$MrLoader = object_getClass(_logos_class$_ungrouped$MrLoader); { MSHookMessageEx(_logos_class$_ungrouped$MrLoader, @selector(showInView:), (IMP)&_logos_method$_ungrouped$MrLoader$showInView$, (IMP*)&_logos_orig$_ungrouped$MrLoader$showInView$);}{ MSHookMessageEx(_logos_class$_ungrouped$MrLoader, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MrLoader$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MrLoader$initWithFrame$);}{ MSHookMessageEx(_logos_class$_ungrouped$MrLoader, @selector(showInView:withOffset:), (IMP)&_logos_method$_ungrouped$MrLoader$showInView$withOffset$, (IMP*)&_logos_orig$_ungrouped$MrLoader$showInView$withOffset$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$MrLoader, @selector(loader), (IMP)&_logos_meta_method$_ungrouped$MrLoader$loader, (IMP*)&_logos_meta_orig$_ungrouped$MrLoader$loader);}Class _logos_class$_ungrouped$TrackTableViewCell = objc_getClass("TrackTableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$TrackTableViewCell, @selector(buyButton), (IMP)&_logos_method$_ungrouped$TrackTableViewCell$buyButton, (IMP*)&_logos_orig$_ungrouped$TrackTableViewCell$buyButton);}Class _logos_class$_ungrouped$SongzaUserSubscription = objc_getClass("SongzaUserSubscription"); { MSHookMessageEx(_logos_class$_ungrouped$SongzaUserSubscription, @selector(isActive), (IMP)&_logos_method$_ungrouped$SongzaUserSubscription$isActive, (IMP*)&_logos_orig$_ungrouped$SongzaUserSubscription$isActive);}} }
#line 65 "Tweak.xm"
