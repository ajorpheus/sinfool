#import <UIKit/UIKit.h>

%hook GifTextGifImage
- (BOOL)isPurchasedOrFreeGif {
    return 1;
}
%end

%hook GifTextGifImage
- (BOOL)isPurchasedGif {
    return 1;
}
%end

%hook GifTextStoreManager
- (BOOL)isUploadFeaturePurchased {
    return 1;
}
%end

