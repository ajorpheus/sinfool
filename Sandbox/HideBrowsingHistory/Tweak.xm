#import <UIKit/UIKit.h>

%hook HistoryTableViewController
- (long long)numberOfSectionsInTableView:(id)arg1 {
    return 0;
}
%end

%hook URLCompletionProvider
- (id)initWithBookmarkProvider:(id)arg1 cloudTabStore:(id)arg2 maxResults:(unsigned long long)arg3 searchableCollectionsMask:(int)arg4 {
    arg4 = 0;
    return %orig;
}
%end

