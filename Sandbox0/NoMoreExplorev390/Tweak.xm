#import <UIKit/UIKit.h>

%hook IGExploreStoryTrayDataSource
- (id)initWithUserSession:(id)arg1 storyTrayResponse:(id)arg2 {
    arg2 = NULL;
    return %orig;
}
%end

%hook IGExploreMainFeedDataStore
- (bool)isEmpty {
    return 1;
}
%end

