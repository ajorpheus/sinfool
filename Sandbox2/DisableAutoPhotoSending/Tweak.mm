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

@class CKTranscriptController; 
static void (*_logos_orig$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$)(_LOGOS_SELF_TYPE_NORMAL CKTranscriptController* _LOGOS_SELF_CONST, SEL, id, id, bool); static void _logos_method$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$(_LOGOS_SELF_TYPE_NORMAL CKTranscriptController* _LOGOS_SELF_CONST, SEL, id, id, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$(_LOGOS_SELF_TYPE_NORMAL CKTranscriptController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {
    arg3 = 0;
    _logos_orig$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKTranscriptController = objc_getClass("CKTranscriptController"); { MSHookMessageEx(_logos_class$_ungrouped$CKTranscriptController, @selector(photoPickerController:requestsSendAssets:sendImmediately:), (IMP)&_logos_method$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$, (IMP*)&_logos_orig$_ungrouped$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$);}} }
#line 10 "Tweak.xm"
