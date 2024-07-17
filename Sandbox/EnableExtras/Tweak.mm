#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$GifTextGifImage$isPurchasedOrFreeGif(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$GifTextGifImage$isPurchasedGif(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$GifTextStoreManager$isUploadFeaturePurchased(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GifTextGifImage = objc_getClass("GifTextGifImage");
    MSHookMessageEx(_ftt_class_GifTextGifImage, @selector(isPurchasedOrFreeGif), (IMP)_patched_ftt_meth_$GifTextGifImage$isPurchasedOrFreeGif, NULL);
    MSHookMessageEx(_ftt_class_GifTextGifImage, @selector(isPurchasedGif), (IMP)_patched_ftt_meth_$GifTextGifImage$isPurchasedGif, NULL);
    Class _ftt_class_GifTextStoreManager = objc_getClass("GifTextStoreManager");
    MSHookMessageEx(_ftt_class_GifTextStoreManager, @selector(isUploadFeaturePurchased), (IMP)_patched_ftt_meth_$GifTextStoreManager$isUploadFeaturePurchased, NULL);
}
