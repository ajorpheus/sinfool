#import <UIKit/UIKit.h>

%hook _UITableViewHeaderFooterContentView
- (id)initWithFrame:(CGRect)arg1 {
    // •
    return NULL;
}
%end

