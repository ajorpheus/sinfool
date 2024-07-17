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

@class MFMailboxTableView; 
static double (*_logos_orig$_ungrouped$MFMailboxTableView$_destructiveConfirmationPoint)(_LOGOS_SELF_TYPE_NORMAL MFMailboxTableView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MFMailboxTableView$_destructiveConfirmationPoint(_LOGOS_SELF_TYPE_NORMAL MFMailboxTableView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$MFMailboxTableView$_destructiveConfirmationPoint(_LOGOS_SELF_TYPE_NORMAL MFMailboxTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MFMailboxTableView = objc_getClass("MFMailboxTableView"); { MSHookMessageEx(_logos_class$_ungrouped$MFMailboxTableView, @selector(_destructiveConfirmationPoint), (IMP)&_logos_method$_ungrouped$MFMailboxTableView$_destructiveConfirmationPoint, (IMP*)&_logos_orig$_ungrouped$MFMailboxTableView$_destructiveConfirmationPoint);}} }
#line 9 "Tweak.xm"
