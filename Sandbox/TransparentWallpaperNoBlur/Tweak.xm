#import <UIKit/UIKit.h>

%hook SBApplication
- (long long)wallpaperStyle {
    return 0;
}
%end

