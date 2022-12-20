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
	arg1 = [UIColor colorWithRed:0/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
	%orig;
}
- (void)setLinkColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:0/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
	%orig;
}
%end

%hook YTMPlayerPageColorScheme
- (void)setBackgroundColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:25/255.0 green:20/255.0 blue:156/255.0 alpha:255/255.0];
	%orig;
}

- (void)setMiniPlayerColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:25/255.0 green:20/255.0 blue:156/255.0 alpha:255/255.0];
	%orig;
}

- (void)setPlayButtonColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:182/255.0 green:146/255.0 blue:247/255.0 alpha:255/255.0];
	%orig;
}

- (void)setTabViewColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:183/255.0 green:152/255.0 blue:254/255.0 alpha:255/255.0];
	%orig;
}

- (void)setAVSwitchFillColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:109/255.0 green:159/255.0 blue:255/255.0 alpha:255/255.0];
	%orig;
}

- (void)setQueueBackgroundColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:183/255.0 green:152/255.0 blue:254/255.0 alpha:255/255.0];
	%orig;
}
%end

%hook MDCInkView
- (void)setInkColor:(id)arg1 {
	arg1 = [UIColor colorWithRed:0/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
	%orig;
}
%end

%hook YTMScrollingLabel
- (void)setText:(id)arg1 {
	arg1 = @"🌈🌈🌈🌈🌈🌈🌈🌈🌈🌈";
	%orig;
}
- (float)autoScrollSpeed {
	return 9e+78;
}
- (void)stopAutoScrolling{
}
%end

%hook YTMModularVideoOverlayView
- (void)setFullscreen:(bool)arg1 {
	arg1 = 1;
	%orig;
}
- (bool)isFullscreen {
	return 1;
}
%end

%hook YTMAVSwitch
- (void)didTap:(id)arg1 {
}
%end

%hook YTMModularWatchView
- (void)setVideoTitle:(id)arg1 videoArtist:(id)arg2 {
	arg1 = @"🖤💜👹🕷👹🖤💜";
	%orig;
}
%end
