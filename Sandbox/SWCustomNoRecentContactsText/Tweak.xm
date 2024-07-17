#import <UIKit/UIKit.h>

%hook SBAppSwitcherSettings
- (long long)peopleNumberOfRecents {
    // •
    return 0;
}
%end

%hook SBAppSwitcherPeopleScrollView
- (id)_labelImageParametersForLabelString:(id)arg1 {
    // Set Text...
    arg1 = @"Flex 2";
    return %orig;
}
%end

