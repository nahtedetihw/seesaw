#import <UIKit/UIKit.h>

@interface SBVolumeButtonEventMapper : NSObject
@property (assign,nonatomic) long long layoutDirection;
-(void)setVolumeButtonRemappingEnabled:(BOOL)arg1;
@end

%hook SBVolumeButtonEventMapper
+(BOOL)isVolumeButtonRemappingSupported {
    return YES;
}

-(BOOL)isVolumeButtonRemappingEnabled {
    return YES;
}

- (void)setVolumeButtonRemappingEnabled:(BOOL)arg1 {
    %orig(YES);
}

+ (BOOL)_shouldInvertVolumeButtonsForLTRTopEdgePadInInterfaceOrientation:(NSInteger)arg1 {
    return arg1 == 3 ? YES : NO;
}

+ (BOOL)_shouldInvertVolumeButtonsForRTLTopEdgePadInInterfaceOrientation:(NSInteger)arg1 {
    return arg1 == 4 ? YES : NO;
}
%end
