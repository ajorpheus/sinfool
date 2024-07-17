#import <UIKit/UIKit.h>

%hook SBTodayTableDateHeaderFactory
- (id)dateHeaderWithDate:(id)arg1 locale:(id)arg2 singleLine:(bool)arg3 {
    // •
    arg3 = 1;
    return %orig;
}
%end

