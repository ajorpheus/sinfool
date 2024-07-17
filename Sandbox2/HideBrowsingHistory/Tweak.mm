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

@class URLCompletionProvider; @class HistoryTableViewController; 
static long long (*_logos_orig$_ungrouped$HistoryTableViewController$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL HistoryTableViewController* _LOGOS_SELF_CONST, SEL, id); static long long _logos_method$_ungrouped$HistoryTableViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL HistoryTableViewController* _LOGOS_SELF_CONST, SEL, id); static URLCompletionProvider* (*_logos_orig$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$)(_LOGOS_SELF_TYPE_INIT URLCompletionProvider*, SEL, id, id, unsigned long long, int) _LOGOS_RETURN_RETAINED; static URLCompletionProvider* _logos_method$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$(_LOGOS_SELF_TYPE_INIT URLCompletionProvider*, SEL, id, id, unsigned long long, int) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$HistoryTableViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL HistoryTableViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static URLCompletionProvider* _logos_method$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$(_LOGOS_SELF_TYPE_INIT URLCompletionProvider* __unused self, SEL __unused _cmd, id arg1, id arg2, unsigned long long arg3, int arg4) _LOGOS_RETURN_RETAINED {
    arg4 = 0;
    return _logos_orig$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HistoryTableViewController = objc_getClass("HistoryTableViewController"); { MSHookMessageEx(_logos_class$_ungrouped$HistoryTableViewController, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$HistoryTableViewController$numberOfSectionsInTableView$, (IMP*)&_logos_orig$_ungrouped$HistoryTableViewController$numberOfSectionsInTableView$);}Class _logos_class$_ungrouped$URLCompletionProvider = objc_getClass("URLCompletionProvider"); { MSHookMessageEx(_logos_class$_ungrouped$URLCompletionProvider, @selector(initWithBookmarkProvider:cloudTabStore:maxResults:searchableCollectionsMask:), (IMP)&_logos_method$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$, (IMP*)&_logos_orig$_ungrouped$URLCompletionProvider$initWithBookmarkProvider$cloudTabStore$maxResults$searchableCollectionsMask$);}} }
#line 16 "Tweak.xm"
