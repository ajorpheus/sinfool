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

@class WUMapViewController; @class GADAdFetcher; @class WUStationViewController; 
static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static double (*_logos_orig$_ungrouped$WUStationViewController$collectionView$layout$heightForHeaderInSection$)(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST, SEL, id, id, long long); static double _logos_method$_ungrouped$WUStationViewController$collectionView$layout$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST, SEL, id, id, long long); static id (*_logos_orig$_ungrouped$WUStationViewController$adTileIndexPath)(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WUStationViewController$adTileIndexPath(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$WUMapViewController$adPanelView)(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WUMapViewController$adPanelView(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$WUMapViewController$mapTopConstraint)(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WUMapViewController$mapTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$WUMapViewController$closeButtonTopConstraint)(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WUMapViewController$closeButtonTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$WUMapViewController$otherButtonsTopConstraint)(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WUMapViewController$otherButtonsTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static double _logos_method$_ungrouped$WUStationViewController$collectionView$layout$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, long long arg3) {
    return 0;
}



static id _logos_method$_ungrouped$WUMapViewController$adPanelView(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$WUMapViewController$mapTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$WUMapViewController$closeButtonTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$WUMapViewController$otherButtonsTopConstraint(_LOGOS_SELF_TYPE_NORMAL WUMapViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$WUStationViewController$adTileIndexPath(_LOGOS_SELF_TYPE_NORMAL WUStationViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$WUStationViewController = objc_getClass("WUStationViewController"); { MSHookMessageEx(_logos_class$_ungrouped$WUStationViewController, @selector(collectionView:layout:heightForHeaderInSection:), (IMP)&_logos_method$_ungrouped$WUStationViewController$collectionView$layout$heightForHeaderInSection$, (IMP*)&_logos_orig$_ungrouped$WUStationViewController$collectionView$layout$heightForHeaderInSection$);}{ MSHookMessageEx(_logos_class$_ungrouped$WUStationViewController, @selector(adTileIndexPath), (IMP)&_logos_method$_ungrouped$WUStationViewController$adTileIndexPath, (IMP*)&_logos_orig$_ungrouped$WUStationViewController$adTileIndexPath);}Class _logos_class$_ungrouped$WUMapViewController = objc_getClass("WUMapViewController"); { MSHookMessageEx(_logos_class$_ungrouped$WUMapViewController, @selector(adPanelView), (IMP)&_logos_method$_ungrouped$WUMapViewController$adPanelView, (IMP*)&_logos_orig$_ungrouped$WUMapViewController$adPanelView);}{ MSHookMessageEx(_logos_class$_ungrouped$WUMapViewController, @selector(mapTopConstraint), (IMP)&_logos_method$_ungrouped$WUMapViewController$mapTopConstraint, (IMP*)&_logos_orig$_ungrouped$WUMapViewController$mapTopConstraint);}{ MSHookMessageEx(_logos_class$_ungrouped$WUMapViewController, @selector(closeButtonTopConstraint), (IMP)&_logos_method$_ungrouped$WUMapViewController$closeButtonTopConstraint, (IMP*)&_logos_orig$_ungrouped$WUMapViewController$closeButtonTopConstraint);}{ MSHookMessageEx(_logos_class$_ungrouped$WUMapViewController, @selector(otherButtonsTopConstraint), (IMP)&_logos_method$_ungrouped$WUMapViewController$otherButtonsTopConstraint, (IMP*)&_logos_orig$_ungrouped$WUMapViewController$otherButtonsTopConstraint);}} }
#line 45 "Tweak.xm"
