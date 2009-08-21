#import "RootViewDataSource.h"
#import "BNCell.h"

@implementation RootViewDataSource

///////////////////////////////////////////////////////////////////////////////////////////////////
// public


+ (RootViewDataSource*)rootViewDataSource {
	RootViewDataSource* dataSource =  [[[RootViewDataSource alloc] initWithItems:
									 [NSMutableArray arrayWithObjects:
									 [[[TTSubtextTableField alloc] initWithText:@"Video" subtext:@"Now you can shoot video, edit it, and share it — all on your iPhone 3G S."] autorelease],
									 [[[TTSubtextTableField alloc] initWithText:@"3-Megapixel Camera" subtext:@"The new 3-megapixel camera takes great still photos, too, thanks to built-in autofocus."] autorelease],
									 [[[TTSubtextTableField alloc] initWithText:@"Search" subtext:@"Find what you’re looking for across your iPhone, all from one convenient place."] autorelease],
									 [[[TTSubtextTableField alloc] initWithText:@"Compass" subtext:@"With a built-in digital compass, iPhone 3G S can point the way."] autorelease],
									 [[[TTSubtextTableField alloc] initWithText:@"Cut, Copy & Paste" subtext:@"Cut, copy, and paste words and photos, even between applications."] autorelease],
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
	
	if ([object isKindOfClass:[TTSubtextTableField class]]) { 
		return [BNSubtextTableFieldCell class]; 	
	} else { 
		return [super tableView:tableView cellClassForObject:object]; 
	}
}


- (void)tableView:(UITableView*)tableView prepareCell:(UITableViewCell*)cell
forRowAtIndexPath:(NSIndexPath*)indexPath {
	cell.accessoryType = UITableViewCellAccessoryNone;
}

@end
