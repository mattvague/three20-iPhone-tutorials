#import "BNCell.h"
#import "BNField.h"
#import "BNDefaultStylesheet.h"

///////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////
//////   BNSubtextTableFieldCell     ////
/////////////////////////////////////////

@implementation BNSubtextTableFieldCell

///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)setObject:(id)object {
	if (_field != object) {
		[super setObject:object];
		
		TTSubtextTableField* field = object;
		
		_label.text = field.text;
		_label.font = TTSTYLEVAR(myFirstFont);
		_label.textColor = TTSTYLEVAR(myFirstColor);
		_label.adjustsFontSizeToFitWidth = YES;
		
		_subtextLabel.text = field.subtext;
		_subtextLabel.font = TTSTYLEVAR(mySecondFont);
		_subtextLabel.textColor = TTSTYLEVAR(mySecondColor);
	}  
}


@end

///////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//////   BNSubtextWithRedTitleTableFieldCell     ////
////////////////////////////////////t/////////////////

@implementation BNSubtextWithRedTitleTableFieldCell

///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)setObject:(id)object {
	if (_field != object) {
		[super setObject:object];
		
		_label.textColor = [UIColor redColor];
	}  
}


@end


///////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
//////   BNSubtextWithRedTitleAndURLTableFieldCell     ////
////////////////////////////////////t//////////////////////

@implementation BNSubtextWithRedTitleAndURLTableFieldCell

///////////////////////////////////////////////////////////////////////////////////////////////////


+ (CGFloat)tableView:(UITableView*)tableView rowHeightForItem:(id)item {
	CGFloat maxWidth = tableView.width - 20;
	BNSubtextWithRedTitleAndURLTableField* field = item;
	
	CGSize textSize = [field.text sizeWithFont:TTSTYLEVAR(tableSmallFont)
					   constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
					   lineBreakMode:UILineBreakModeWordWrap];
	CGSize subtextSize = [field.subtext sizeWithFont:TTSTYLEVAR(font)
						  constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX) lineBreakMode:UILineBreakModeWordWrap];
	CGSize featureURLSize = [field.featureURL sizeWithFont:[UIFont systemFontOfSize:12]
						  constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX) lineBreakMode:UILineBreakModeWordWrap];
	
	return 20 + textSize.height + subtextSize.height + featureURLSize.height;
}

///////////////////////////////////////////////////////////////////////////////////////////////////

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString*)identifier {
	if (self = [super initWithFrame:frame reuseIdentifier:identifier]) {
		_featureURLLabel = [[UILabel alloc] initWithFrame:CGRectZero];
		_featureURLLabel.font = [UIFont systemFontOfSize:11];
		_featureURLLabel.textColor = [UIColor grayColor];
		_featureURLLabel.backgroundColor = [UIColor clearColor];
		_featureURLLabel.highlightedTextColor = TTSTYLEVAR(highlightedTextColor);
		_featureURLLabel.textAlignment = UITextAlignmentLeft;
		_featureURLLabel.contentMode = UIViewContentModeTop;
		_featureURLLabel.lineBreakMode = UILineBreakModeWordWrap;
		_featureURLLabel.numberOfLines = 0;
		[self.contentView addSubview:_featureURLLabel];
	}
	return self;
}

- (void)dealloc {
	[_featureURLLabel release];
	[super dealloc];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// UIView

- (void)layoutSubviews {
	[super layoutSubviews];
	CGFloat maxWidth = self.contentView.width - 20;
	CGSize featureURLSize = [_featureURLLabel.text sizeWithFont:_featureURLLabel.font
						  constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX) lineBreakMode:_featureURLLabel.lineBreakMode];
	_featureURLLabel.frame = CGRectMake(10, _subtextLabel.bottom + 5, featureURLSize.width, featureURLSize.height);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// TTTableViewCell

- (void)setObject:(id)object {
	if (_field != object) {
		[super setObject:object];
		
		
		BNSubtextWithRedTitleAndURLTableField* field = object;
		
		_featureURLLabel.text = field.featureURL;
	}  
}

@end

