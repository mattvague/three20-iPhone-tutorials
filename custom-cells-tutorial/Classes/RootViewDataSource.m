#import "RootViewDataSource.h"
#import "BNCell.h"
#import "BNField.h"

@implementation RootViewDataSource

///////////////////////////////////////////////////////////////////////////////////////////////////
// public


+ (RootViewDataSource*)rootViewDataSource {
	RootViewDataSource* dataSource =  [[[RootViewDataSource alloc] initWithItems:
									 [NSMutableArray arrayWithObjects:
									 [[[BNSubtextWithRedTitleAndURLTableField alloc] initWithText:@"Video" subtext:@"Now you can shoot video, edit it, and share it — all on your iPhone 3G S." featureURL:@"http://www.apple.com/iphone/iphone-3gs/video-recording.html"] autorelease],
									 [[[BNSubtextWithRedTitleAndURLTableField alloc] initWithText:@"3-Megapixel Camera" subtext:@"The new 3-megapixel camera takes great still photos, too, thanks to built-in autofocus." featureURL:@"http://www.apple.com/iphone/iphone-3gs/photos.html"] autorelease],
									 [[[BNSubtextWithRedTitleAndURLTableField alloc] initWithText:@"Search" subtext:@"Find what you’re looking for across your iPhone, all from one convenient place." featureURL:@"http://www.apple.com/iphone/iphone-3gs/search.html"] autorelease],
									 [[[BNSubtextWithRedTitleAndURLTableField alloc] initWithText:@"Compass" subtext:@"With a built-in digital compass, iPhone 3G S can point the way." featureURL:@"http://www.apple.com/iphone/iphone-3gs/maps-compass.html"] autorelease],
									 [[[BNSubtextWithRedTitleAndURLTableField alloc] initWithText:@"Cut, Copy & Paste" subtext:@"Cut, copy, and paste words and photos, even between applications." featureURL:@"http://www.apple.com/iphone/iphone-3gs/cut-copy-paste.html"] autorelease],
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
	
	if ([object isKindOfClass:[BNSubtextWithRedTitleAndURLTableField class]]) { 
		return [BNSubtextWithRedTitleAndURLTableFieldCell class]; 	
	} else if ([object isKindOfClass:[TTSubtextTableField class]]) { 
		return [BNSubtextWithRedTitleTableFieldCell class]; 	
	} else { 
		return [super tableView:tableView cellClassForObject:object]; 
	}
}


- (void)tableView:(UITableView*)tableView prepareCell:(UITableViewCell*)cell
forRowAtIndexPath:(NSIndexPath*)indexPath {
	cell.accessoryType = UITableViewCellAccessoryNone;
}

@end
