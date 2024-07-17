#import <UIKit/UIKit.h>

%hook SBRootFolderView
- (void)setStatusBarHeight:(double)arg1 {
    // Set Top Distance...
    arg1 = 100;
    %orig;
}
%end

%hook SBRootFolderView
- (unsigned long long)_minusPageCount {
    return 0;
}
%end

%hook SBSearchScrollView
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

