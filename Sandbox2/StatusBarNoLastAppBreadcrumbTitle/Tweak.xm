#import <UIKit/UIKit.h>

%hook UIStatusBarBreadcrumbItemView
- (id)shortenedTitleWithCompressionLevel:(int)arg1 {
    arg1 = 1;
    return %orig;
}
%end

