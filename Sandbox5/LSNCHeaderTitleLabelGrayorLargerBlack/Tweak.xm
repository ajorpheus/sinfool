#import <UIKit/UIKit.h>

%hook NCLookHeaderContentView
- (void)_configureTitleLabel:(id)arg1 forStyle:(long long)arg2 {
    // (Arg#2): (Gray=1, Larger Black Text=2)
    arg2 = 2;
    %orig;
}
%end

