#import <UIKit/UIKit.h>

%hook URLCompletionProvider
- (id)initWithBookmarkProvider:(id)arg1 cloudTabStore:(id)arg2 maxResults:(unsigned long long)arg3 searchableCollectionsMask:(int)arg4 {
    arg3 = 0;
    return %orig;
}
%end

