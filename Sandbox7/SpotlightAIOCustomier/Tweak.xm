#import <UIKit/UIKit.h>

%hook SBSearchBackdropView
- (bool)useHighQualityGraphics {
    // High Quality Graphics
    return 0;
}
%end

%hook SBSearchBlurEffectView
- (id)init {
    // Minus Page - No Blur
    return NULL;
}
%end

%hook SBSearchBackdropView
- (void)setTransitionProgress:(double)arg1 {
    // HS Page - Blur Transition (0.0-1.0) [Requires HQ Graphics Enabled]
    arg1 = 0.95;
    %orig;
}
%end

%hook SearchUIRoundedView
- (void)updateCornersRoundTop:(bool)arg1 roundBottom:(bool)arg2 {
    // Sections - No Background
    arg1 = 1;
    arg2 = 1;
    %orig;
}
%end

%hook SearchUIRoundedView
- (void)setColor:(id)arg1 {
    // Sections - Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:28/255.0];
    %orig;
}
%end

%hook SearchUIRoundedView
- (id)imageWithCornersRoundedTop:(bool)arg1 roundedBottom:(bool)arg2 {
    // Sections - Rounded Corners
    arg1 = 1;
    arg2 = 1;
    return %orig;
}
%end

%hook UITableViewCell
- (bool)_insetsBackground {
    // Sections - Adds Space In Between
    return 0;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    // Sections - No Separators
    arg1 = 0;
    %orig;
}
%end

%hook SPUISearchViewController
- (bool)shouldShowMoreButtonForSection:(unsigned long long)arg1 {
    // Sections - More Button
    return 0;
}
%end

%hook SPUISearchTableHeaderView
- (void)updateWithTitle:(id)arg1 section:(unsigned long long)arg2 isExpanded:(bool)arg3 {
    // Sections - Title Label
    arg3 = 1;
    %orig;
}
%end

%hook SPUISearchTableView
- (bool)sectionIsExpanded:(long long)arg1 {
    // Sections - Expanded
    return 1;
}
%end

%hook SPUISearchViewController
- (void)setClearSearchTimeInterval:(double)arg1 {
    // Search Bar - Seconds Before Clearing Search On Dismiss
    arg1 = 0;
    %orig;
}
%end

