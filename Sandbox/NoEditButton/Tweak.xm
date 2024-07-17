#import <UIKit/UIKit.h>

%hook UINavigationItem
- (id)_leftBarButtonItem {
    return NULL;
}
%end

