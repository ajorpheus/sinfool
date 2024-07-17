#import <UIKit/UIKit.h>

%hook PUAlbumListViewController
- (long long)numberOfVisualSectionsForSectionedGridLayout:(id)arg1 {
    // Hide "My Albums": (Yes=1, No=P)
    return 1;
}
%end

%hook PHFetchOptions
- (unsigned long long)includeAssetSourceTypes {
    return 2;
}
%end

%hook PUAlbumListCellContentView
- (void)setSubtitle:(id)arg1 animated:(bool)arg2 {
    arg1 = @"0";
    %orig;
}
%end

%hook PUSearchResultsDataSource
- (unsigned long long)numberOfSearchResults {
    return 0;
}
%end

