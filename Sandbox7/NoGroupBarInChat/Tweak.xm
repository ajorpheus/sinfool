#import <UIKit/UIKit.h>

%hook CKTranscriptGroupHeaderView
- (id)initWithFrame:(CGRect)arg1 conversation:(id)arg2 {
    // •
    return NULL;
}
%end

