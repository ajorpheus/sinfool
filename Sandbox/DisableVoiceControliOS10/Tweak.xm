#import <UIKit/UIKit.h>

%hook SBPolicyAggregator
- (bool)_allowsCapabilityVoiceControlWithExplanation:(id*)arg1 {
    return 0;
}
%end

