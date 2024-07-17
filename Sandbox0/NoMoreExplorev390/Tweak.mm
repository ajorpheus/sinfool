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

@class IGExploreMainFeedDataStore; @class IGExploreStoryTrayDataSource; 
static IGExploreStoryTrayDataSource* (*_logos_orig$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$)(_LOGOS_SELF_TYPE_INIT IGExploreStoryTrayDataSource*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IGExploreStoryTrayDataSource* _logos_method$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$(_LOGOS_SELF_TYPE_INIT IGExploreStoryTrayDataSource*, SEL, id, id) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$IGExploreMainFeedDataStore$isEmpty)(_LOGOS_SELF_TYPE_NORMAL IGExploreMainFeedDataStore* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$IGExploreMainFeedDataStore$isEmpty(_LOGOS_SELF_TYPE_NORMAL IGExploreMainFeedDataStore* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static IGExploreStoryTrayDataSource* _logos_method$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$(_LOGOS_SELF_TYPE_INIT IGExploreStoryTrayDataSource* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    arg2 = NULL;
    return _logos_orig$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$IGExploreMainFeedDataStore$isEmpty(_LOGOS_SELF_TYPE_NORMAL IGExploreMainFeedDataStore* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$IGExploreStoryTrayDataSource = objc_getClass("IGExploreStoryTrayDataSource"); { MSHookMessageEx(_logos_class$_ungrouped$IGExploreStoryTrayDataSource, @selector(initWithUserSession:storyTrayResponse:), (IMP)&_logos_method$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$, (IMP*)&_logos_orig$_ungrouped$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$);}Class _logos_class$_ungrouped$IGExploreMainFeedDataStore = objc_getClass("IGExploreMainFeedDataStore"); { MSHookMessageEx(_logos_class$_ungrouped$IGExploreMainFeedDataStore, @selector(isEmpty), (IMP)&_logos_method$_ungrouped$IGExploreMainFeedDataStore$isEmpty, (IMP*)&_logos_orig$_ungrouped$IGExploreMainFeedDataStore$isEmpty);}} }
#line 16 "Tweak.xm"
