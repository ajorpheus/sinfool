#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKMessageEntryView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CKMessageEntryView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Bar - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:190/255.0];
    _orig_ftt_meth_$CKMessageEntryView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKMessageEntryView$setShouldHideBackgroundView$)(id, SEL, bool);
static void _patched_ftt_meth_$CKMessageEntryView$setShouldHideBackgroundView$(id self, SEL _cmd, bool arg1) {
    // Bar - BG Blur Visibility: (Hide=T, Show=F) NOTE: Entry Field Style Can Effect Appearance
    arg1 = 1;
    _orig_ftt_meth_$CKMessageEntryView$setShouldHideBackgroundView$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKMessageEntryContentView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CKMessageEntryContentView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Entry Field - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$CKMessageEntryContentView$setBackgroundColor$(self, _cmd, arg1);
}

static double _patched_ftt_meth_$CKUIBehavior$entryFieldCoverLineWidth(id self, SEL _cmd) {
    // Entry Field - Border Visibilty: (Hide=0, Show=P)
    return 0;
}

static void (*_orig_ftt_meth_$CKEntryViewButton$setCkTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$CKEntryViewButton$setCkTintColor$(id self, SEL _cmd, id arg1) {
    // Entry Field - Buttons Color: (Set Color or Stock=D)
    arg1 = [UIColor colorWithRed:160/255.0 green:160/255.0 blue:160/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CKEntryViewButton$setCkTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKMessageEntryView$setStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$CKMessageEntryView$setStyle$(id self, SEL _cmd, long long arg1) {
    // Entry Field - Style: (White Input Text=1, White BG w/Black Input Text=4)
    arg1 = 1;
    _orig_ftt_meth_$CKMessageEntryView$setStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$)(id, SEL, id);
static void _patched_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$(id self, SEL _cmd, id arg1) {
    // Entry Field - Custom Placeholder Text: (Set Text or Stock=D)
    arg1 = @"Write a message...";
    _orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessageEntryView = objc_getClass("CKMessageEntryView");
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CKMessageEntryView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CKMessageEntryView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(setShouldHideBackgroundView:), (IMP)_patched_ftt_meth_$CKMessageEntryView$setShouldHideBackgroundView$, (IMP *)_orig_ftt_meth_$CKMessageEntryView$setShouldHideBackgroundView$);
    Class _ftt_class_CKMessageEntryContentView = objc_getClass("CKMessageEntryContentView");
    MSHookMessageEx(_ftt_class_CKMessageEntryContentView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CKMessageEntryContentView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CKMessageEntryContentView$setBackgroundColor$);
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(entryFieldCoverLineWidth), (IMP)_patched_ftt_meth_$CKUIBehavior$entryFieldCoverLineWidth, NULL);
    Class _ftt_class_CKEntryViewButton = objc_getClass("CKEntryViewButton");
    MSHookMessageEx(_ftt_class_CKEntryViewButton, @selector(setCkTintColor:), (IMP)_patched_ftt_meth_$CKEntryViewButton$setCkTintColor$, (IMP *)_orig_ftt_meth_$CKEntryViewButton$setCkTintColor$);
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(setStyle:), (IMP)_patched_ftt_meth_$CKMessageEntryView$setStyle$, (IMP *)_orig_ftt_meth_$CKMessageEntryView$setStyle$);
    MSHookMessageEx(_ftt_class_CKMessageEntryContentView, @selector(setPlaceholderText:), (IMP)_patched_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$, (IMP *)_orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$);
}
