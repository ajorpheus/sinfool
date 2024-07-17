#import <UIKit/UIKit.h>

%hook SearchUIRoundedView
- (id)imageWithCornersRoundedTop:(bool)arg1 roundedBottom:(bool)arg2 {
    arg1 = 1;
    arg2 = 1;
    return %orig;
}
%end

%hook UITableViewCell
- (bool)_insetsBackground {
    return 1;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

