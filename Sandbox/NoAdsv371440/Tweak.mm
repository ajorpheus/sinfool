#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$AdPlayQueueManager$adDownloader(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AdPlayQueueManager = objc_getClass("AdPlayQueueManager");
    MSHookMessageEx(_ftt_class_AdPlayQueueManager, @selector(adDownloader), (IMP)_patched_ftt_meth_$AdPlayQueueManager$adDownloader, NULL);
}
