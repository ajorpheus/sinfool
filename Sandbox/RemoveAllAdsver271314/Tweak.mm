#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id (*_orig_ftt_meth_$GBTableHeaderView$initWithCoder$)(id, SEL, id);
static id _patched_ftt_meth_$GBTableHeaderView$initWithCoder$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$GBTableHeaderView$initWithCoder$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$YMImageMapView$initWithImage$)(id, SEL, id);
static id _patched_ftt_meth_$YMImageMapView$initWithImage$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$YMImageMapView$initWithImage$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$GBStation$detailsAd(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$GBDAL$inlineAds(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$GBStationListDataSource$inlineAds(id self, SEL _cmd) {
    return NULL;
}

static float _patched_ftt_meth_$GBScrollableHomeScreen$DFPAdHeight(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$GBStationListDataSource$inlineDFPListAds(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$GBAdController$isAdPositionActive$(id self, SEL _cmd, int arg1) {
    return 0;
}

static BOOL _patched_ftt_meth_$GBAdAgent$isInlineDFPAdActive(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_GBTableHeaderView = objc_getClass("GBTableHeaderView");
    MSHookMessageEx(_ftt_class_GBTableHeaderView, @selector(initWithCoder:), (IMP)_patched_ftt_meth_$GBTableHeaderView$initWithCoder$, (IMP *)_orig_ftt_meth_$GBTableHeaderView$initWithCoder$);
    Class _ftt_class_YMImageMapView = objc_getClass("YMImageMapView");
    MSHookMessageEx(_ftt_class_YMImageMapView, @selector(initWithImage:), (IMP)_patched_ftt_meth_$YMImageMapView$initWithImage$, (IMP *)_orig_ftt_meth_$YMImageMapView$initWithImage$);
    Class _ftt_class_GBStation = objc_getClass("GBStation");
    MSHookMessageEx(_ftt_class_GBStation, @selector(detailsAd), (IMP)_patched_ftt_meth_$GBStation$detailsAd, NULL);
    Class _ftt_class_GBDAL = objc_getClass("GBDAL");
    MSHookMessageEx(_ftt_class_GBDAL, @selector(inlineAds), (IMP)_patched_ftt_meth_$GBDAL$inlineAds, NULL);
    Class _ftt_class_GBStationListDataSource = objc_getClass("GBStationListDataSource");
    MSHookMessageEx(_ftt_class_GBStationListDataSource, @selector(inlineAds), (IMP)_patched_ftt_meth_$GBStationListDataSource$inlineAds, NULL);
    Class _ftt_class_GBScrollableHomeScreen = objc_getClass("GBScrollableHomeScreen");
    MSHookMessageEx(_ftt_class_GBScrollableHomeScreen, @selector(DFPAdHeight), (IMP)_patched_ftt_meth_$GBScrollableHomeScreen$DFPAdHeight, NULL);
    MSHookMessageEx(_ftt_class_GBStationListDataSource, @selector(inlineDFPListAds), (IMP)_patched_ftt_meth_$GBStationListDataSource$inlineDFPListAds, NULL);
    Class _ftt_class_GBAdController = objc_getClass("GBAdController");
    MSHookMessageEx(_ftt_class_GBAdController, @selector(isAdPositionActive:), (IMP)_patched_ftt_meth_$GBAdController$isAdPositionActive$, NULL);
    Class _ftt_class_GBAdAgent = objc_getClass("GBAdAgent");
    MSHookMessageEx(_ftt_class_GBAdAgent, @selector(isInlineDFPAdActive), (IMP)_patched_ftt_meth_$GBAdAgent$isInlineDFPAdActive, NULL);
}
