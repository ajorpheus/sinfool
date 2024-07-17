#import <UIKit/UIKit.h>

%hook UISearchBar
- (id)_imageForSearchBarIcon:(long long)arg1 state:(unsigned long long)arg2 customImage:(bool*)arg3 {
    return NULL;
}
%end

