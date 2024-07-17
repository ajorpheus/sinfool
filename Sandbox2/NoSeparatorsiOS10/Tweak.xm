#import <UIKit/UIKit.h>

%hook UICollectionViewTableLayoutAttributes
- (void)setSeparatorStyle:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UICollectionViewTableLayoutAttributes
- (void)setSeparatorColor:(id)arg1 {
}
%end

