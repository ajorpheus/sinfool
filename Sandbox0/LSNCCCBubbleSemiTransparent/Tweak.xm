#import <UIKit/UIKit.h>

%hook NCMaterialView
- (id)initWithStyleOptions:(unsigned long long)arg1 materialSettings:(id)arg2 captureOnly:(bool)arg3 {
    arg1 = 8;
    return %orig;
}
%end

