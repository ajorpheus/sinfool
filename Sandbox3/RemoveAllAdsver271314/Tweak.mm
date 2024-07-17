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

@class GBAdAgent; @class GADAdFetcher; @class GBStation; @class GBStationListDataSource; @class GBAdController; @class GBTableHeaderView; @class YMImageMapView; @class GBScrollableHomeScreen; @class GBDAL; 
static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GBTableHeaderView* (*_logos_orig$_ungrouped$GBTableHeaderView$initWithCoder$)(_LOGOS_SELF_TYPE_INIT GBTableHeaderView*, SEL, id) _LOGOS_RETURN_RETAINED; static GBTableHeaderView* _logos_method$_ungrouped$GBTableHeaderView$initWithCoder$(_LOGOS_SELF_TYPE_INIT GBTableHeaderView*, SEL, id) _LOGOS_RETURN_RETAINED; static YMImageMapView* (*_logos_orig$_ungrouped$YMImageMapView$initWithImage$)(_LOGOS_SELF_TYPE_INIT YMImageMapView*, SEL, id) _LOGOS_RETURN_RETAINED; static YMImageMapView* _logos_method$_ungrouped$YMImageMapView$initWithImage$(_LOGOS_SELF_TYPE_INIT YMImageMapView*, SEL, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$GBStation$detailsAd)(_LOGOS_SELF_TYPE_NORMAL GBStation* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GBStation$detailsAd(_LOGOS_SELF_TYPE_NORMAL GBStation* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$GBDAL$inlineAds)(_LOGOS_SELF_TYPE_NORMAL GBDAL* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GBDAL$inlineAds(_LOGOS_SELF_TYPE_NORMAL GBDAL* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$GBStationListDataSource$inlineAds)(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GBStationListDataSource$inlineAds(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$GBStationListDataSource$inlineDFPListAds)(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GBStationListDataSource$inlineDFPListAds(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$GBScrollableHomeScreen$DFPAdHeight)(_LOGOS_SELF_TYPE_NORMAL GBScrollableHomeScreen* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$GBScrollableHomeScreen$DFPAdHeight(_LOGOS_SELF_TYPE_NORMAL GBScrollableHomeScreen* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$GBAdController$isAdPositionActive$)(_LOGOS_SELF_TYPE_NORMAL GBAdController* _LOGOS_SELF_CONST, SEL, int); static BOOL _logos_method$_ungrouped$GBAdController$isAdPositionActive$(_LOGOS_SELF_TYPE_NORMAL GBAdController* _LOGOS_SELF_CONST, SEL, int); static BOOL (*_logos_orig$_ungrouped$GBAdAgent$isInlineDFPAdActive)(_LOGOS_SELF_TYPE_NORMAL GBAdAgent* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$GBAdAgent$isInlineDFPAdActive(_LOGOS_SELF_TYPE_NORMAL GBAdAgent* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static GBTableHeaderView* _logos_method$_ungrouped$GBTableHeaderView$initWithCoder$(_LOGOS_SELF_TYPE_INIT GBTableHeaderView* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    arg1 = NULL;
    return _logos_orig$_ungrouped$GBTableHeaderView$initWithCoder$(self, _cmd, arg1);
}



static YMImageMapView* _logos_method$_ungrouped$YMImageMapView$initWithImage$(_LOGOS_SELF_TYPE_INIT YMImageMapView* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    arg1 = NULL;
    return _logos_orig$_ungrouped$YMImageMapView$initWithImage$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$GBStation$detailsAd(_LOGOS_SELF_TYPE_NORMAL GBStation* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$GBDAL$inlineAds(_LOGOS_SELF_TYPE_NORMAL GBDAL* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$GBStationListDataSource$inlineAds(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static float _logos_method$_ungrouped$GBScrollableHomeScreen$DFPAdHeight(_LOGOS_SELF_TYPE_NORMAL GBScrollableHomeScreen* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static id _logos_method$_ungrouped$GBStationListDataSource$inlineDFPListAds(_LOGOS_SELF_TYPE_NORMAL GBStationListDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static BOOL _logos_method$_ungrouped$GBAdController$isAdPositionActive$(_LOGOS_SELF_TYPE_NORMAL GBAdController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    return 0;
}



static BOOL _logos_method$_ungrouped$GBAdAgent$isInlineDFPAdActive(_LOGOS_SELF_TYPE_NORMAL GBAdAgent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$GBTableHeaderView = objc_getClass("GBTableHeaderView"); { MSHookMessageEx(_logos_class$_ungrouped$GBTableHeaderView, @selector(initWithCoder:), (IMP)&_logos_method$_ungrouped$GBTableHeaderView$initWithCoder$, (IMP*)&_logos_orig$_ungrouped$GBTableHeaderView$initWithCoder$);}Class _logos_class$_ungrouped$YMImageMapView = objc_getClass("YMImageMapView"); { MSHookMessageEx(_logos_class$_ungrouped$YMImageMapView, @selector(initWithImage:), (IMP)&_logos_method$_ungrouped$YMImageMapView$initWithImage$, (IMP*)&_logos_orig$_ungrouped$YMImageMapView$initWithImage$);}Class _logos_class$_ungrouped$GBStation = objc_getClass("GBStation"); { MSHookMessageEx(_logos_class$_ungrouped$GBStation, @selector(detailsAd), (IMP)&_logos_method$_ungrouped$GBStation$detailsAd, (IMP*)&_logos_orig$_ungrouped$GBStation$detailsAd);}Class _logos_class$_ungrouped$GBDAL = objc_getClass("GBDAL"); { MSHookMessageEx(_logos_class$_ungrouped$GBDAL, @selector(inlineAds), (IMP)&_logos_method$_ungrouped$GBDAL$inlineAds, (IMP*)&_logos_orig$_ungrouped$GBDAL$inlineAds);}Class _logos_class$_ungrouped$GBStationListDataSource = objc_getClass("GBStationListDataSource"); { MSHookMessageEx(_logos_class$_ungrouped$GBStationListDataSource, @selector(inlineAds), (IMP)&_logos_method$_ungrouped$GBStationListDataSource$inlineAds, (IMP*)&_logos_orig$_ungrouped$GBStationListDataSource$inlineAds);}{ MSHookMessageEx(_logos_class$_ungrouped$GBStationListDataSource, @selector(inlineDFPListAds), (IMP)&_logos_method$_ungrouped$GBStationListDataSource$inlineDFPListAds, (IMP*)&_logos_orig$_ungrouped$GBStationListDataSource$inlineDFPListAds);}Class _logos_class$_ungrouped$GBScrollableHomeScreen = objc_getClass("GBScrollableHomeScreen"); { MSHookMessageEx(_logos_class$_ungrouped$GBScrollableHomeScreen, @selector(DFPAdHeight), (IMP)&_logos_method$_ungrouped$GBScrollableHomeScreen$DFPAdHeight, (IMP*)&_logos_orig$_ungrouped$GBScrollableHomeScreen$DFPAdHeight);}Class _logos_class$_ungrouped$GBAdController = objc_getClass("GBAdController"); { MSHookMessageEx(_logos_class$_ungrouped$GBAdController, @selector(isAdPositionActive:), (IMP)&_logos_method$_ungrouped$GBAdController$isAdPositionActive$, (IMP*)&_logos_orig$_ungrouped$GBAdController$isAdPositionActive$);}Class _logos_class$_ungrouped$GBAdAgent = objc_getClass("GBAdAgent"); { MSHookMessageEx(_logos_class$_ungrouped$GBAdAgent, @selector(isInlineDFPAdActive), (IMP)&_logos_method$_ungrouped$GBAdAgent$isInlineDFPAdActive, (IMP*)&_logos_orig$_ungrouped$GBAdAgent$isInlineDFPAdActive);}} }
#line 65 "Tweak.xm"
