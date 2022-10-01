#import <UIKit/UIKit.h>

%hook YTIPlayerResponse

- (bool)isMonetized {
	return 0;
}
%end

%hook YTIPlayabilityStatus

-(bool)isPlayableInBackground {
	return 1;
}
%end

%hook MLVideo

-(bool)playableInBackground {
	return 1;
}
%end

%hook YTAdsInnerTubeContextDecorator

-(void)decorateContext:(id)arg1 {
	arg1 = NULL;
	return %orig;
}
%end

%hook YTFormattedStringLabel
- (void)setTextColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:212/255.0 green:3/255.0 blue:26/255.0 alpha:255/255.0];
	%orig;
}
%end

%hook YTMPlayerPageColorScheme
- (void)setBackgroundColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:224/255.0 green:214/255.0 blue:57/255.0 alpha:255/255.0];
	%orig;
}

- (void)setMiniPlayerColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:25/255.0 green:20/255.0 blue:156/255.0 alpha:255/255.0];
	%orig;
}

- (void)setPlayButtonColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:174/255.0 green:68/255.0 blue:228/255.0 alpha:255/255.0];
	%orig;
}

- (void)setTabViewColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:232/255.0 green:33/255.0 blue:0/255.0 alpha:255/255.0];
	%orig;
}

- (void)setAVSwitchFillColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:109/255.0 green:159/255.0 blue:255/255.0 alpha:255/255.0];
	%orig;
}

- (void)setQueueBackgroundColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:25/255.0 green:20/255.0 blue:156/255.0 alpha:255/255.0];
	%orig;
}
%end

