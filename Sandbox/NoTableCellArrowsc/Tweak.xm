#import <UIKit/UIKit.h>

%hook PSTableCell
- (void)setForceHideDisclosureIndicator:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PSTableCell
- (bool)forceHideDisclosureIndicator {
    return 1;
}
%end

%hook UITableViewCell
- (id)_disclosureChevronImage:(bool)arg1 {
    return NULL;
}
%end

