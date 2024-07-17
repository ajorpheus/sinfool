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

@class CKMessageEntryContentView; @class CKEntryViewButton; @class CKUIBehavior; @class CKMessageEntryView; 
static void (*_logos_orig$_ungrouped$CKMessageEntryView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CKMessageEntryView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$CKMessageEntryView$setStyle$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$CKMessageEntryView$setStyle$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$CKMessageEntryContentView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CKMessageEntryContentView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKEntryViewButton$setCkTintColor$)(_LOGOS_SELF_TYPE_NORMAL CKEntryViewButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CKEntryViewButton$setCkTintColor$(_LOGOS_SELF_TYPE_NORMAL CKEntryViewButton* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CKMessageEntryView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:190/255.0];
    _logos_orig$_ungrouped$CKMessageEntryView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CKMessageEntryContentView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$CKMessageEntryContentView$setBackgroundColor$(self, _cmd, arg1);
}



static double _logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$CKEntryViewButton$setCkTintColor$(_LOGOS_SELF_TYPE_NORMAL CKEntryViewButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:160/255.0 green:160/255.0 blue:160/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CKEntryViewButton$setCkTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CKMessageEntryView$setStyle$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$CKMessageEntryView$setStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = @"Write a message...";
    _logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKMessageEntryView = objc_getClass("CKMessageEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(setShouldHideBackgroundView:), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$);}{ MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(setStyle:), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$setStyle$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$setStyle$);}Class _logos_class$_ungrouped$CKMessageEntryContentView = objc_getClass("CKMessageEntryContentView"); { MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryContentView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CKMessageEntryContentView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryContentView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryContentView, @selector(setPlaceholderText:), (IMP)&_logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$);}Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(entryFieldCoverLineWidth), (IMP)&_logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth);}Class _logos_class$_ungrouped$CKEntryViewButton = objc_getClass("CKEntryViewButton"); { MSHookMessageEx(_logos_class$_ungrouped$CKEntryViewButton, @selector(setCkTintColor:), (IMP)&_logos_method$_ungrouped$CKEntryViewButton$setCkTintColor$, (IMP*)&_logos_orig$_ungrouped$CKEntryViewButton$setCkTintColor$);}} }
#line 58 "Tweak.xm"
