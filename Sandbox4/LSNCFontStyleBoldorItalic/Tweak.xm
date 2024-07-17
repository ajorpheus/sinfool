#import <UIKit/UIKit.h>

%hook NCLookViewFontProvider
- (id)nc_preferredFontForTextStyle:(id)arg1 hiFontStyle:(long long)arg2 {
    // (Arg#3): (Italic=1, Bold=2)
    arg2 = 1;
    return %orig;
}
%end

