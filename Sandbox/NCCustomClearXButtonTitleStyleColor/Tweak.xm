#import <UIKit/UIKit.h>

%hook SBNotificationsClearButton
- (id)initWithTitle:(id)arg1 graphicsQuality:(long long)arg2 {
    // (Arg#1): Custom "Clear" Text,  (Arg#2): "X" Button Style - 0=White
    arg1 = @"Delete All";
    arg2 = 0;
    return %orig;
}
%end

