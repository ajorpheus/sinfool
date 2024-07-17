#import <UIKit/UIKit.h>

%hook PSUIDateTimePickerCell
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3 {
    arg1 = -1;
    return %orig;
}
%end

