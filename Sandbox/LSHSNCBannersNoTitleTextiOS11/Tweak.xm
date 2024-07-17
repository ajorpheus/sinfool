#import <UIKit/UIKit.h>

%hook MTPlatterHeaderContentView
- (void)setTitle:(id)arg1 {
    arg1 = @" ";
    %orig;
}
%end

