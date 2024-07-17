#import <UIKit/UIKit.h>

%hook PUPhotoBrowserTitleView
- (void)setCreationDate:(id)arg1 {
    // Set Creation Date...
    arg1 = @"FLDate:1985-10-26T01:21:03-0400";
    %orig;
}
%end

