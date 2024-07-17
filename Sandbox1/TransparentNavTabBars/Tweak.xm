#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(double)arg1 legibilityStyle:(long long)arg2 tintColor:(id)arg3 hasBusyBackground:(bool)arg4 idiom:(long long)arg5 {
    // Set Status Bar Color... (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook UINavigationItemView
- (bool)_useSilverLookForBarStyle:(long long)arg1 {
    // Nav Bar Uses Silver Look Title Text
    return 1;
}
%end

%hook PUPhotoBrowserTitleView
- (void)setTextColor:(id)arg1 {
    // Set Browser Title Text Color...
    arg1 = [UIColor colorWithRed:113/255.0 green:120/255.0 blue:128/255.0 alpha:255/255.0];
    %orig;
}
%end

