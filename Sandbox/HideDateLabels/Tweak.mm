#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$NoteCell$date(id self, SEL _cmd) {
    // Cells
    return NULL;
}

static void (*_orig_ftt_meth_$NoteDateLabel$setDate$)(id, SEL, id);
static void _patched_ftt_meth_$NoteDateLabel$setDate$(id self, SEL _cmd, id arg1) {
    // Notes
    arg1 = NULL;
    _orig_ftt_meth_$NoteDateLabel$setDate$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NoteCell = objc_getClass("NoteCell");
    MSHookMessageEx(_ftt_class_NoteCell, @selector(date), (IMP)_patched_ftt_meth_$NoteCell$date, NULL);
    Class _ftt_class_NoteDateLabel = objc_getClass("NoteDateLabel");
    MSHookMessageEx(_ftt_class_NoteDateLabel, @selector(setDate:), (IMP)_patched_ftt_meth_$NoteDateLabel$setDate$, (IMP *)_orig_ftt_meth_$NoteDateLabel$setDate$);
}
