#import <UIKit/UIKit.h>

%hook TabOverviewItem
- (id)stackName {
    // Single Tabs (=NULL)  Stacked Tabs (=pass-through)
    return NULL;
}
%end

%hook TabOverview
- (unsigned long long)_tabsPerRow {
    // Tabs Per Row
    return 3;
}
%end

%hook TabOverviewItem
- (void)setTitleColor:(id)arg1 {
    // "X" Color
    arg1 = [UIColor colorWithRed:253/255.0 green:2/255.0 blue:16/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook TabThumbnailView
- (void)setTitleColor:(id)arg1 {
    // Tab Title Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIMotionAnalyzer
- (id)initWithSettings:(id)arg1 {
    // Disable Parallax  (Yes=NULL, No=pass-through)
    return NULL;
}
%end

%hook BrowserToolbar
- (id)initWithPlacement:(long long)arg1 {
    // Transparent Toolbar/Move Buttons To Sides  (Yes=0, No=pass-through)
    arg1 = 0;
    return %orig;
}
%end

%hook TabController
- (void)setUsesTiltedTabView:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook TabController
- (void)setUsesTabOverview:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

