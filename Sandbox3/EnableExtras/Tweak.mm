#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class GifTextStoreManager; @class GifTextGifImage; 
static BOOL (*_logos_orig$_ungrouped$GifTextGifImage$isPurchasedOrFreeGif)(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$GifTextGifImage$isPurchasedOrFreeGif(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$GifTextGifImage$isPurchasedGif)(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$GifTextGifImage$isPurchasedGif(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$GifTextStoreManager$isUploadFeaturePurchased)(_LOGOS_SELF_TYPE_NORMAL GifTextStoreManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$GifTextStoreManager$isUploadFeaturePurchased(_LOGOS_SELF_TYPE_NORMAL GifTextStoreManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$GifTextGifImage$isPurchasedOrFreeGif(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$GifTextGifImage$isPurchasedGif(_LOGOS_SELF_TYPE_NORMAL GifTextGifImage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$GifTextStoreManager$isUploadFeaturePurchased(_LOGOS_SELF_TYPE_NORMAL GifTextStoreManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GifTextGifImage = objc_getClass("GifTextGifImage"); { MSHookMessageEx(_logos_class$_ungrouped$GifTextGifImage, @selector(isPurchasedOrFreeGif), (IMP)&_logos_method$_ungrouped$GifTextGifImage$isPurchasedOrFreeGif, (IMP*)&_logos_orig$_ungrouped$GifTextGifImage$isPurchasedOrFreeGif);}{ MSHookMessageEx(_logos_class$_ungrouped$GifTextGifImage, @selector(isPurchasedGif), (IMP)&_logos_method$_ungrouped$GifTextGifImage$isPurchasedGif, (IMP*)&_logos_orig$_ungrouped$GifTextGifImage$isPurchasedGif);}Class _logos_class$_ungrouped$GifTextStoreManager = objc_getClass("GifTextStoreManager"); { MSHookMessageEx(_logos_class$_ungrouped$GifTextStoreManager, @selector(isUploadFeaturePurchased), (IMP)&_logos_method$_ungrouped$GifTextStoreManager$isUploadFeaturePurchased, (IMP*)&_logos_orig$_ungrouped$GifTextStoreManager$isUploadFeaturePurchased);}} }
#line 21 "Tweak.xm"
