#import <UIKit/UIKit.h>

%hook UINavigationItemView
- (BOOL)_useSilverLookForBarStyle:(int)arg1 {
    return 1;
}
%end

