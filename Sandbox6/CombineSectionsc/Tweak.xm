#import <UIKit/UIKit.h>

%hook UITableView
- (double)sectionHeaderHeight {
    // Top Section Gap: (Show=P, Hide=0)
    return 0;
}
%end

%hook UITableView
- (double)sectionFooterHeight {
    // Bottom Section Gap: (Show=P, Hide=0)
    return 0;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    // Separators: (Hide=0, Show=1)
    arg1 = 0;
    %orig;
}
%end

%hook UITableView
- (bool)_shouldDrawSeparatorAtTopOfSection:(long long)arg1 {
    // Top Separators: (Show=P, Hide=F)
    return 0;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (int)sectionLocation {
    // Cell Corners: (Round=0, Square=1, Round Top=2, Round Bottom=3, Default=P)
    return 1;
}
%end

