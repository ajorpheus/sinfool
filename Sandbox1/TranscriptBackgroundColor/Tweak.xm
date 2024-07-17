#import <UIKit/UIKit.h>

%hook CKTranscriptCollectionView
- (void)setBackgroundColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
    %orig;
}
%end

