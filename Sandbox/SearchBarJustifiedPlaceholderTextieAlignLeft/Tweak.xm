#import <UIKit/UIKit.h>

%hook UISearchBarTextField
- (bool)_shouldCenterPlaceholder {
    return 0;
}
%end

