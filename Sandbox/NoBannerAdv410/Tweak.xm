#import <UIKit/UIKit.h>

%hook GADBannerView
- (void)setAdSize:(GADAdSize)arg1 andReload:(bool)arg2 {
    arg2 = 0;
    %orig;
}
%end

