#import <UIKit/UIKit.h>

%hook UITableView
- (bool)_delegateImplementsHeightForHeaderInSection {
    // Show Top Header Space
    return 0;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    // Separators:  (Hide=0, Show=1)
    arg1 = 0;
    %orig;
}
%end

%hook UITableView
- (bool)_shouldDrawSeparatorAtTopOfSection:(long long)arg1 {
    // Show Top Separator
    return 0;
}
%end

%hook UITableView
- (double)_defaultSectionHeaderHeight {
    return 0;
}
%end

%hook UITableView
- (double)_defaultSectionFooterHeight {
    return 0;
}
%end

