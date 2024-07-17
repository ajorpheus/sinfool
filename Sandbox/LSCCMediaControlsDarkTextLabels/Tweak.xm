#import <UIKit/UIKit.h>

%hook MPUChronologicalProgressView
- (id)_createTimeLabelWithStyle:(long long)arg1 {
    // Progress Bar Time
    arg1 = 1;
    return %orig;
}
%end

%hook MPUMediaControlsTitlesView
- (id)_titleTextAttributes {
    // Title
    return NULL;
}
%end

%hook MPUMediaControlsTitlesView
- (id)_detailTextAttributes {
    // Detail (Artist/Album)
    return NULL;
}
%end

