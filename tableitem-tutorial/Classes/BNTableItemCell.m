#import "BNTableItemCell.h"
#import "BNTableItem.h"
#import "BNDefaultStylesheet.h"


///////////////////////////////////////////////////////////////////////////////////////////////////

static CGFloat kHPadding = 10;
static CGFloat kVPadding = 15;
static CGFloat kImageWidth = 80;
static CGFloat kImageHeight = 80;

///////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////
//////   BNTableCaptionedItemWithThreeImagesBelowCell     ////
//////////////////////////////////////////////////////////////

@implementation BNTableCaptionedItemWithThreeImagesBelowCell

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForItem:(id)item {
	BNTableCaptionedItemWithThreeImagesBelow* captionedItem = item;
	
	CGFloat maxWidth = tableView.width - kHPadding*2;
	
	CGSize textSize = [captionedItem.text sizeWithFont:TTSTYLEVAR(myHeadingFont)
					   constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
					   lineBreakMode:UILineBreakModeWordWrap];
	CGSize subtextSize = [captionedItem.caption sizeWithFont:TTSTYLEVAR(mySubtextFont)
						  constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX) lineBreakMode:UILineBreakModeWordWrap];
	
	return kVPadding*2 + textSize.height + subtextSize.height + kImageHeight + kVPadding;
}

///////////////////////////////////////////////////////////////////////////////////////////////////

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)identifier {
	if (self = [super initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:identifier]) {
		_item = nil;
		
		_imageView1 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_imageView1];

		_imageView2 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_imageView2];

		_imageView3 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_imageView3];
		
	}
	return self;
}

- (void)dealloc {
	TT_RELEASE_MEMBER(_imageView1);
	TT_RELEASE_MEMBER(_imageView2);
	TT_RELEASE_MEMBER(_imageView3);
	[super dealloc];
}
///////////////////////////////////////////////////////////////////////////////////////////////////
// UIView

- (void)layoutSubviews {
	[super layoutSubviews];

	[self.detailTextLabel sizeToFit];
	self.detailTextLabel.top = kVPadding;
	
	self.textLabel.height = self.detailTextLabel.height;
	
	_imageView1.frame = CGRectMake(20, self.detailTextLabel.bottom + kVPadding, kImageWidth, kImageHeight);
	_imageView2.frame = CGRectMake(_imageView1.right + kHPadding, self.detailTextLabel.bottom + kVPadding, kImageWidth, kImageHeight);
	_imageView3.frame = CGRectMake(_imageView2.right + kHPadding, self.detailTextLabel.bottom + kVPadding, kImageWidth, kImageHeight);
	
	
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// TTTableViewCell

- (id)object {
	return _item;
}

- (void)setObject:(id)object {
	if (_item != object) {
		[super setObject:object];
		
		BNTableCaptionedItemWithThreeImagesBelow* item = object;
		
		
		self.textLabel.textColor = TTSTYLEVAR(myHeadingColor);
		self.textLabel.font = TTSTYLEVAR(myHeadingFont);
		self.textLabel.textAlignment = UITextAlignmentRight;
		self.textLabel.contentMode = UIViewContentModeCenter;
		self.textLabel.lineBreakMode = UILineBreakModeWordWrap;
		self.textLabel.numberOfLines = 0;
		
		self.detailTextLabel.textColor = TTSTYLEVAR(mySubtextColor);
		self.detailTextLabel.font = TTSTYLEVAR(mySubtextFont);
		self.detailTextLabel.textAlignment = UITextAlignmentLeft;
		self.detailTextLabel.contentMode = UIViewContentModeTop;
		self.detailTextLabel.lineBreakMode = UILineBreakModeWordWrap;
		
		
		_imageView1.URL = item.image1;
		_imageView1.style = item.imageStyle;
		
		_imageView2.URL = item.image2;
		_imageView2.style = item.imageStyle;
		
		_imageView3.URL = item.image3;
		_imageView3.style = item.imageStyle;

    }
}

@end
