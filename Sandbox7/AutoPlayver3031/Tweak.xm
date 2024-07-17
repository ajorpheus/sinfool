#import <UIKit/UIKit.h>

%hook SXMUIManager
- (BOOL)autoPlayOn {
    return 1;
}
%end

