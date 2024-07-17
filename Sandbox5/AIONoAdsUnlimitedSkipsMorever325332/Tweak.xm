#import <UIKit/UIKit.h>

%hook SongzaAdManager
- (BOOL)shouldDisplayAds {
    return 0;
}
%end

%hook SongzaPlayerViewController_iPad
- (BOOL)shouldShowUpsellButton {
    return 0;
}
%end

%hook SongzaPlayerViewController_iPhone
- (BOOL)shouldShowUpsellButton {
    return 0;
}
%end

%hook SongzaPlayerViewController
- (BOOL)shouldShowUpsellButton {
    return 0;
}
%end

%hook MrLoader
- (void)showInView:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook TrackTableViewCell
- (id)buyButton {
    return NULL;
}
%end

%hook SongzaUserSubscription
- (BOOL)isActive {
    return 1;
}
%end

%hook MrLoader
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook MrLoader
- (void)showInView:(id)arg1 withOffset:(CGPoint)arg2 {
    arg1 = NULL;
    %orig;
}
%end

%hook MrLoader
+ (id)loader {
    return NULL;
}
%end

