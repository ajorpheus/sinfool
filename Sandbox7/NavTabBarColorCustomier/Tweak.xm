#import <UIKit/UIKit.h>

%hook _UIBarBackground
- (void)configureEffectForStyle:(long long)arg1 backgroundTintColor:(id)arg2 forceOpaque:(bool)arg3 {
    // Style (Arg#1): {Light=0, Dark=1} Color: (Arg#2): {Set Color...} Opaque (Arg#4): {Yes=T, No=F}
    arg2 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    arg1 = 1;
    %orig;
}
%end

%hook UINavigationBar
- (long long)_barStyle:(bool)arg1 {
    // Nav/Status Bar Text Style: {White=1, Black=0}
    return 1;
}
%end

