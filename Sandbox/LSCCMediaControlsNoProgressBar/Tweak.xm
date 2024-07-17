#import <UIKit/UIKit.h>

%hook MPUChronologicalProgressView
- (id)initWithStyle:(long long)arg1 {
    return NULL;
}
%end

