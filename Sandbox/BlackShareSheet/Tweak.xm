#import <UIKit/UIKit.h>

%hook _UIBarBackground
- (void)configureEffectForStyle:(long long)arg1 backgroundTintColor:(id)arg2 forceOpaque:(bool)arg3 {
    arg1 = 0;
    arg3 = 1;
    arg2 = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIVisualEffectFilterView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIActivityGroupListViewController
- (void)setDarkStyleOnLegacyApp:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UIActivityGroupViewController
- (void)setDarkStyleOnLegacyApp:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

