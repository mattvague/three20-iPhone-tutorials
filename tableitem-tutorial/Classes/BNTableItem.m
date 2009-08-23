#import "BNTableItem.h"


///////////////////////////////////////////////////////////////////////////////////////////////////  

////////////////////////////////////////////////////////
//////   BNTableCaptionedItemWithThreeImagesBelow  /////  
////////////////////////////////////////////////////////

@implementation BNTableCaptionedItemWithThreeImagesBelow
@synthesize image1 = _image1, image2 = _image2, image3 = _image3, imageStyle = _imageStyle;

///////////////////////////////////////////////////////////////////////////////////////////////////
// class public

+ (id)itemWithText:(NSString*)text caption:(NSString*)caption image1:(NSString*)image1 image2:(NSString*)image2 image3:(NSString*)image3 {
		BNTableCaptionedItemWithThreeImagesBelow* item = [[[self alloc] init] autorelease];
		item.text = text;
		item.caption = caption;
		item.image1 = image1;
		item.image2 = image2;
		item.image3 = image3;
		return item;
	}

	
///////////////////////////////////////////////////////////////////////////////////////////////////
// NSObject

- (id)init {
	if (self = [super init]) {
		_image1 = nil;
		_image2 = nil;
		_image3 = nil;
		_imageStyle = nil;
	}
	return self;
}

- (void)dealloc {
	TT_RELEASE_MEMBER(_image1);
	TT_RELEASE_MEMBER(_image2);
	TT_RELEASE_MEMBER(_image3);
	TT_RELEASE_MEMBER(_imageStyle);
	[super dealloc];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// NSCoding

- (id)initWithCoder:(NSCoder*)decoder {
	if (self = [super initWithCoder:decoder]) {
		self.image1 = [decoder decodeObjectForKey:@"image1"];
		self.image2 = [decoder decodeObjectForKey:@"image2"];
		self.image3 = [decoder decodeObjectForKey:@"image3"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder*)encoder {
	[super encodeWithCoder:encoder];
	if (self.image1) {
		[encoder encodeObject:self.image1 forKey:@"image1"];
	}
	if (self.image2) {
		[encoder encodeObject:self.image2 forKey:@"image2"];
	}
	if (self.image3) {
		[encoder encodeObject:self.image3 forKey:@"image3"];
	}
}

@end
