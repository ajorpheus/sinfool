#import <UIKit/UIKit.h>

%hook SBMainSwitcherViewController
- (bool)_isBestAppSuggestionEligibleForSwitcher:(id)arg1 {
    return 0;
}
%end

