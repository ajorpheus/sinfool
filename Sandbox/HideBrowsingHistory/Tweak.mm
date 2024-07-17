#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$HistoryTableViewController$numberOfSectionsInTableView$(id self, SEL _cmd, id arg1) {
    return 0;
}

static id (*_orig_ftt_meth_$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$)(id, SEL, id, id, unsigned long long, int);
static id _patched_ftt_meth_$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$(id self, SEL _cmd, id arg1, id arg2, unsigned long long arg3, int arg4) {
    arg4 = 0;
    return _orig_ftt_meth_$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$(self, _cmd, arg1, arg2, arg3, arg4);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_HistoryTableViewController = objc_getClass("HistoryTableViewController");
    MSHookMessageEx(_ftt_class_HistoryTableViewController, @selector(numberOfSectionsInTableView:), (IMP)_patched_ftt_meth_$HistoryTableViewController$numberOfSectionsInTableView$, NULL);
    Class _ftt_class_URLCompletionProvider = objc_getClass("URLCompletionProvider");
    MSHookMessageEx(_ftt_class_URLCompletionProvider, @selector(initWithBookmarkProvider:cloudTabStore:maxResults:searchableCollectionsMask:), (IMP)_patched_ftt_meth_$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$, (IMP *)_orig_ftt_meth_$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$);
}
