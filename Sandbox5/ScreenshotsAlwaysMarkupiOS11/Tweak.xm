#import <UIKit/UIKit.h>

%hook SSEnvironmentDescription
- (void)setPresentationMode:(unsigned long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

