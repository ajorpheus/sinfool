#import <UIKit/UIKit.h>

%hook SLKTheme
- (id)mainBackgroundColor {
    return [UIColor colorWithRed:27/255.0 green:27/255.0 blue:27/255.0 alpha:255/255.0];
}
%end

%hook SLKTheme
- (id)textColor {
    return [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:255/255.0];
}
%end

%hook SLKTheme
- (void)setType:(unsigned long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

