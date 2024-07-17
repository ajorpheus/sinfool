#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook GBTableHeaderView
- (id)initWithCoder:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook YMImageMapView
- (id)initWithImage:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GBStation
- (id)detailsAd {
    return NULL;
}
%end

%hook GBDAL
- (id)inlineAds {
    return NULL;
}
%end

%hook GBStationListDataSource
- (id)inlineAds {
    return NULL;
}
%end

%hook GBScrollableHomeScreen
- (float)DFPAdHeight {
    return 0;
}
%end

%hook GBStationListDataSource
- (id)inlineDFPListAds {
    return NULL;
}
%end

%hook GBAdController
- (BOOL)isAdPositionActive:(int)arg1 {
    return 0;
}
%end

%hook GBAdAgent
- (BOOL)isInlineDFPAdActive {
    return 0;
}
%end

