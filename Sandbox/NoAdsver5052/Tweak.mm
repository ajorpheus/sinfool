#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static double _patched_ftt_meth_$WUStationViewController$collectionView$layout$heightForHeaderInSection$(id self, SEL _cmd, id arg1, id arg2, long long arg3) {
    return 0;
}

static id _patched_ftt_meth_$WUMapViewController$adPanelView(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$WUMapViewController$mapTopConstraint(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$WUMapViewController$closeButtonTopConstraint(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$WUMapViewController$otherButtonsTopConstraint(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$WUStationViewController$adTileIndexPath(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_WUStationViewController = objc_getClass("WUStationViewController");
    MSHookMessageEx(_ftt_class_WUStationViewController, @selector(collectionView:layout:heightForHeaderInSection:), (IMP)_patched_ftt_meth_$WUStationViewController$collectionView$layout$heightForHeaderInSection$, NULL);
    Class _ftt_class_WUMapViewController = objc_getClass("WUMapViewController");
    MSHookMessageEx(_ftt_class_WUMapViewController, @selector(adPanelView), (IMP)_patched_ftt_meth_$WUMapViewController$adPanelView, NULL);
    MSHookMessageEx(_ftt_class_WUMapViewController, @selector(mapTopConstraint), (IMP)_patched_ftt_meth_$WUMapViewController$mapTopConstraint, NULL);
    MSHookMessageEx(_ftt_class_WUMapViewController, @selector(closeButtonTopConstraint), (IMP)_patched_ftt_meth_$WUMapViewController$closeButtonTopConstraint, NULL);
    MSHookMessageEx(_ftt_class_WUMapViewController, @selector(otherButtonsTopConstraint), (IMP)_patched_ftt_meth_$WUMapViewController$otherButtonsTopConstraint, NULL);
    MSHookMessageEx(_ftt_class_WUStationViewController, @selector(adTileIndexPath), (IMP)_patched_ftt_meth_$WUStationViewController$adTileIndexPath, NULL);
}
