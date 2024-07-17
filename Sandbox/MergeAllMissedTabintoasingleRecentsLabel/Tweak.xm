#import <UIKit/UIKit.h>

%hook PHRecentsToggleButton
- (id)initWithWidth:(float)arg1 leftTitle:(id)arg2 rightTitle:(id)arg3 {
    return NULL;
}
%end

