#import "RootViewDataSource.h"
#import "BNTableItem.h"
#import "BNTableItemCell.h"


@implementation RootViewDataSource

///////////////////////////////////////////////////////////////////////////////////////////////////
// public


+ (RootViewDataSource*)rootViewDataSource {
	RootViewDataSource* dataSource =  [[[RootViewDataSource alloc] initWithItems:
										[NSMutableArray arrayWithObjects: [BNTableCaptionedItemWithThreeImagesBelow itemWithText:@"These are some pictures of me (Matt) doing different stuff"
																									caption:@"Matt"
																									image1:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/boating.jpg"
																									image2:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/cooking.jpg"
																									image3:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/surfing.jpg"],
																		 [BNTableCaptionedItemWithThreeImagesBelow itemWithText:@"These are some pictures of Vancouver, BC"
																									caption:@"VanCity"
																									image1:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/Vancouver_Aerial.jpg"
																									image2:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/Coast-Mountains-BC.jpg"
																									image3:@"http://mattvague.com/wordpress/wp-content/uploads/2009/08/Vancouver_Aerial_2.jpg"],
																		 nil]] autorelease];
	return dataSource;
}



///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)dealloc {
	[super dealloc];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// TTTableViewDataSource

- (Class)tableView:(UITableView*)tableView cellClassForObject:(id) object { 
	
	if ([object isKindOfClass:[BNTableCaptionedItemWithThreeImagesBelow class]]) { 
		return [BNTableCaptionedItemWithThreeImagesBelowCell class]; 		
	} else { 
		return [super tableView:tableView cellClassForObject:object]; 
	}
}



- (void)tableView:(UITableView*)tableView prepareCell:(UITableViewCell*)cell
forRowAtIndexPath:(NSIndexPath*)indexPath {
	cell.accessoryType = UITableViewCellAccessoryNone;
}

@end
