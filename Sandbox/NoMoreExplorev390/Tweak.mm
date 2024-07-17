#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$)(id, SEL, id, id);
static id _patched_ftt_meth_$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$(id self, SEL _cmd, id arg1, id arg2) {
    arg2 = NULL;
    return _orig_ftt_meth_$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$IGExploreMainFeedDataStore$isEmpty(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IGExploreStoryTrayDataSource = objc_getClass("IGExploreStoryTrayDataSource");
    MSHookMessageEx(_ftt_class_IGExploreStoryTrayDataSource, @selector(initWithUserSession:storyTrayResponse:), (IMP)_patched_ftt_meth_$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$, (IMP *)_orig_ftt_meth_$IGExploreStoryTrayDataSource$initWithUserSession$storyTrayResponse$);
    Class _ftt_class_IGExploreMainFeedDataStore = objc_getClass("IGExploreMainFeedDataStore");
    MSHookMessageEx(_ftt_class_IGExploreMainFeedDataStore, @selector(isEmpty), (IMP)_patched_ftt_meth_$IGExploreMainFeedDataStore$isEmpty, NULL);
}
