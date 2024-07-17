#import <UIKit/UIKit.h>

%hook TFNTwitterAccount
- (bool)isInTweetLayoutExperimentMediaFirstWithSmallerAvatar {
    return 1;
}
%end

%hook TFNTwitterAccount
- (bool)isInTweetLayoutExperimentSmallerAvatar {
    return 1;
}
%end

%hook TFNTwitterAvatarImageView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

