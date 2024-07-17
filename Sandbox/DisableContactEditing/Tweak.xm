#import <UIKit/UIKit.h>

%hook ABContactViewController
- (bool)allowsEditing {
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsSendMessage {
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsSharing {
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsContactBlocking {
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsAddToFavorites {
    return 0;
}
%end

