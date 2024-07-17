#import <UIKit/UIKit.h>

%hook SBWallpaperController
- (bool)_updateEffectViewForVariant:(long long)arg1 withFactory:(id)arg2 {
    return 0;
}
%end

