#import <UIKit/UIKit.h>

%hook UISearchBarBackground
- (id)_createBackgroundImageForBarStyle:(long long)arg1 alpha:(double)arg2 {
    // Search Bar - Hide Background: (Arg#2) Yes=0, No=P
    arg2 = 0;
    return %orig;
}
%end

%hook _SFNavigationBarURLButton
- (void)setBackgroundAlphaFactor:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook CKUIBehavior
- (double)entryFieldCoverLineWidth {
    return 0;
}
%end

%hook CKUITheme
- (id)entryFieldCoverFillColor {
    return NULL;
}
%end

