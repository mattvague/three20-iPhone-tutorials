#import "BNStyleSheet.h"
#import "BNDefaultStyleSheet.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
// global

static BNStyleSheet* gStyleSheet = nil;

@implementation BNStyleSheet

///////////////////////////////////////////////////////////////////////////////////////////////////
// class public

+ (BNStyleSheet*)globalStyleSheet {
	if (!gStyleSheet) {
		gStyleSheet = [[BNDefaultStyleSheet alloc] init];
	}
	return gStyleSheet;
}

+ (void)setGlobalStyleSheet:(BNStyleSheet*)styleSheet {
	[gStyleSheet release];
	gStyleSheet = [styleSheet retain];
}



@end
