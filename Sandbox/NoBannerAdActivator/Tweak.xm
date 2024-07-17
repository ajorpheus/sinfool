#import <UIKit/UIKit.h>

%hook UIWebView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

