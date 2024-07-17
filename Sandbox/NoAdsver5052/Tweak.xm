#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook WUStationViewController
- (double)collectionView:(id)arg1 layout:(id)arg2 heightForHeaderInSection:(long long)arg3 {
    return 0;
}
%end

%hook WUMapViewController
- (id)adPanelView {
    return NULL;
}
%end

%hook WUMapViewController
- (id)mapTopConstraint {
    return NULL;
}
%end

%hook WUMapViewController
- (id)closeButtonTopConstraint {
    return NULL;
}
%end

%hook WUMapViewController
- (id)otherButtonsTopConstraint {
    return NULL;
}
%end

%hook WUStationViewController
- (id)adTileIndexPath {
    return NULL;
}
%end

