#import "Three20/Three20.h"  

///////////////////////////////////////////////////////////////////////////////////////////////////  

////////////////////////////////////////////////////////
//////   BNTableCaptionedItemWithThreeImagesBelow  /////  
////////////////////////////////////////////////////////

@interface BNTableCaptionedItemWithThreeImagesBelow : TTTableCaptionedItem { 
	NSString* _image1;
	NSString* _image2;
	NSString* _image3;
	TTStyle* _imageStyle;
}

@property(nonatomic,copy) NSString* image1;
@property(nonatomic,copy) NSString* image2;
@property(nonatomic,copy) NSString* image3;
@property(nonatomic,retain) TTStyle* imageStyle;

+ (id)itemWithText:(NSString*)text caption:(NSString*)caption image1:(NSString*)image1 image2:(NSString*)image2 image3:(NSString*)image3;



@end  