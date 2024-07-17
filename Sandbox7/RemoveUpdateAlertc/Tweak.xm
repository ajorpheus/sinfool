#import <UIKit/UIKit.h>

%hook UIAlertView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook ConfigurationVersionItem
- (BOOL)forceUpdate {
    return 0;
}
%end

