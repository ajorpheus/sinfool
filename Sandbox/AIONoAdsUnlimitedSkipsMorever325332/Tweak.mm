#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SongzaAdManager$shouldDisplayAds(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$SongzaPlayerViewController_iPad$shouldShowUpsellButton(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$SongzaPlayerViewController_iPhone$shouldShowUpsellButton(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$SongzaPlayerViewController$shouldShowUpsellButton(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$MrLoader$showInView$)(id, SEL, id);
static void _patched_ftt_meth_$MrLoader$showInView$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    _orig_ftt_meth_$MrLoader$showInView$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$TrackTableViewCell$buyButton(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$SongzaUserSubscription$isActive(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$MrLoader$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static void (*_orig_ftt_meth_$MrLoader$showInView$withOffset$)(id, SEL, id, CGPoint);
static void _patched_ftt_meth_$MrLoader$showInView$withOffset$(id self, SEL _cmd, id arg1, CGPoint arg2) {
    arg1 = NULL;
    _orig_ftt_meth_$MrLoader$showInView$withOffset$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$MrLoader$loader(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SongzaAdManager = objc_getClass("SongzaAdManager");
    MSHookMessageEx(_ftt_class_SongzaAdManager, @selector(shouldDisplayAds), (IMP)_patched_ftt_meth_$SongzaAdManager$shouldDisplayAds, NULL);
    Class _ftt_class_SongzaPlayerViewController_iPad = objc_getClass("SongzaPlayerViewController_iPad");
    MSHookMessageEx(_ftt_class_SongzaPlayerViewController_iPad, @selector(shouldShowUpsellButton), (IMP)_patched_ftt_meth_$SongzaPlayerViewController_iPad$shouldShowUpsellButton, NULL);
    Class _ftt_class_SongzaPlayerViewController_iPhone = objc_getClass("SongzaPlayerViewController_iPhone");
    MSHookMessageEx(_ftt_class_SongzaPlayerViewController_iPhone, @selector(shouldShowUpsellButton), (IMP)_patched_ftt_meth_$SongzaPlayerViewController_iPhone$shouldShowUpsellButton, NULL);
    Class _ftt_class_SongzaPlayerViewController = objc_getClass("SongzaPlayerViewController");
    MSHookMessageEx(_ftt_class_SongzaPlayerViewController, @selector(shouldShowUpsellButton), (IMP)_patched_ftt_meth_$SongzaPlayerViewController$shouldShowUpsellButton, NULL);
    Class _ftt_class_MrLoader = objc_getClass("MrLoader");
    MSHookMessageEx(_ftt_class_MrLoader, @selector(showInView:), (IMP)_patched_ftt_meth_$MrLoader$showInView$, (IMP *)_orig_ftt_meth_$MrLoader$showInView$);
    Class _ftt_class_TrackTableViewCell = objc_getClass("TrackTableViewCell");
    MSHookMessageEx(_ftt_class_TrackTableViewCell, @selector(buyButton), (IMP)_patched_ftt_meth_$TrackTableViewCell$buyButton, NULL);
    Class _ftt_class_SongzaUserSubscription = objc_getClass("SongzaUserSubscription");
    MSHookMessageEx(_ftt_class_SongzaUserSubscription, @selector(isActive), (IMP)_patched_ftt_meth_$SongzaUserSubscription$isActive, NULL);
    MSHookMessageEx(_ftt_class_MrLoader, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$MrLoader$initWithFrame$, NULL);
    MSHookMessageEx(_ftt_class_MrLoader, @selector(showInView:withOffset:), (IMP)_patched_ftt_meth_$MrLoader$showInView$withOffset$, (IMP *)_orig_ftt_meth_$MrLoader$showInView$withOffset$);
    MSHookMessageEx(_ftt_class_MrLoader, @selector(loader), (IMP)_patched_ftt_meth_$MrLoader$loader, NULL);
}
