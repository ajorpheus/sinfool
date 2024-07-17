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

@class MTVBrowseAdTileView; @class MTVOnTvTileAdView; @class MTVHomeBigAdView; @class MTVConfig; @class VMNFreeWheelComponent; 
static id (*_logos_orig$_ungrouped$MTVConfig$getAds)(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MTVConfig$getAds(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$VMNFreeWheelComponent$shouldPlayPreroll)(_LOGOS_SELF_TYPE_NORMAL VMNFreeWheelComponent* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$VMNFreeWheelComponent$shouldPlayPreroll(_LOGOS_SELF_TYPE_NORMAL VMNFreeWheelComponent* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$)(_LOGOS_SELF_TYPE_NORMAL MTVHomeBigAdView* _LOGOS_SELF_CONST, SEL, id, id, int); static BOOL _logos_method$_ungrouped$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVHomeBigAdView* _LOGOS_SELF_CONST, SEL, id, id, int); static BOOL (*_logos_orig$_ungrouped$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$)(_LOGOS_SELF_TYPE_NORMAL MTVBrowseAdTileView* _LOGOS_SELF_CONST, SEL, id, id, int); static BOOL _logos_method$_ungrouped$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVBrowseAdTileView* _LOGOS_SELF_CONST, SEL, id, id, int); static BOOL (*_logos_orig$_ungrouped$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$)(_LOGOS_SELF_TYPE_NORMAL MTVOnTvTileAdView* _LOGOS_SELF_CONST, SEL, id, id, int); static BOOL _logos_method$_ungrouped$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVOnTvTileAdView* _LOGOS_SELF_CONST, SEL, id, id, int); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$MTVConfig$getAds(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static BOOL _logos_method$_ungrouped$VMNFreeWheelComponent$shouldPlayPreroll(_LOGOS_SELF_TYPE_NORMAL VMNFreeWheelComponent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVHomeBigAdView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, int arg3) {
    return 0;
}



static BOOL _logos_method$_ungrouped$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVBrowseAdTileView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, int arg3) {
    return 0;
}



static BOOL _logos_method$_ungrouped$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$(_LOGOS_SELF_TYPE_NORMAL MTVOnTvTileAdView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, int arg3) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MTVConfig = objc_getClass("MTVConfig"); { MSHookMessageEx(_logos_class$_ungrouped$MTVConfig, @selector(getAds), (IMP)&_logos_method$_ungrouped$MTVConfig$getAds, (IMP*)&_logos_orig$_ungrouped$MTVConfig$getAds);}Class _logos_class$_ungrouped$VMNFreeWheelComponent = objc_getClass("VMNFreeWheelComponent"); { MSHookMessageEx(_logos_class$_ungrouped$VMNFreeWheelComponent, @selector(shouldPlayPreroll), (IMP)&_logos_method$_ungrouped$VMNFreeWheelComponent$shouldPlayPreroll, (IMP*)&_logos_orig$_ungrouped$VMNFreeWheelComponent$shouldPlayPreroll);}Class _logos_class$_ungrouped$MTVHomeBigAdView = objc_getClass("MTVHomeBigAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVHomeBigAdView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)&_logos_method$_ungrouped$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$, (IMP*)&_logos_orig$_ungrouped$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$);}Class _logos_class$_ungrouped$MTVBrowseAdTileView = objc_getClass("MTVBrowseAdTileView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVBrowseAdTileView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)&_logos_method$_ungrouped$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$, (IMP*)&_logos_orig$_ungrouped$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$);}Class _logos_class$_ungrouped$MTVOnTvTileAdView = objc_getClass("MTVOnTvTileAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVOnTvTileAdView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)&_logos_method$_ungrouped$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$, (IMP*)&_logos_orig$_ungrouped$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$);}} }
#line 33 "Tweak.xm"
