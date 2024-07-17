#import <UIKit/UIKit.h>

%hook UITabBarButtonLabel
- (id)_fontForIdiom:(long long)arg1 {
    // Label Font: (Large=2, Bold=3)
    arg1 = 3;
    return %orig;
}
%end

