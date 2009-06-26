#import "BNField.h"
#import "BNCell.h"

///////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////
//////   BNSubtextWithRedTitleAndURLTableField     /////
////////////////////////////////////////////////////////

@implementation BNSubtextWithRedTitleAndURLTableField

@synthesize featureURL = _featureURL;

- (id)init {
	if (self = [super init]) {
		_featureURL = nil;
	}
	return self;
}

- (id)initWithText:(NSString*)text subtext:(NSString*)subtext featureURL:(NSString*)featureURL {
	if (self = [super initWithText:text subtext:subtext]) {
		self.featureURL = featureURL;
	}
	return self;
}

- (void)dealloc {
	[_featureURL release];
	[super dealloc];
}

@end


///////////////////////////////////////////////////////////////////////////////////////////////////