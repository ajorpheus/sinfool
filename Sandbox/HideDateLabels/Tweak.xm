#import <UIKit/UIKit.h>

%hook NoteCell
- (id)date {
    // Cells
    return NULL;
}
%end

%hook NoteDateLabel
- (void)setDate:(id)arg1 {
    // Notes
    arg1 = NULL;
    %orig;
}
%end

