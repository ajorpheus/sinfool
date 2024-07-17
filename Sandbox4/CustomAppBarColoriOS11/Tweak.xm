#import <UIKit/UIKit.h>

%hook CKBrowserSwitcherFooterView
- (void)setBackgroundColor:(id)arg1 {
    // Set Bar Color...
    arg1 = [UIColor colorWithRed:25/255.0 green:25/255.0 blue:25/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook CKBrowserPluginCell
- (void)setSelected:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

