#import "RootViewDataSource.h"

@implementation RootViewDataSource

///////////////////////////////////////////////////////////////////////////////////////////////////
// public


+ (RootViewDataSource*)rootViewDataSource {
	RootViewDataSource* dataSource =  [[[RootViewDataSource alloc] initWithItems:
										[NSMutableArray arrayWithObjects: nil]] autorelease];
	return dataSource;
}

///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)dealloc {
	[super dealloc];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// TTTableViewDataSource

- (Class)tableView:(UITableView*)tableView cellClassForObject:(id) object { 
	
	if ([object isKindOfClass:nil]) { 
		return nil;
	} else { 
		return [super tableView:tableView cellClassForObject:object]; 
	}
}


- (void)tableView:(UITableView*)tableView prepareCell:(UITableViewCell*)cell
forRowAtIndexPath:(NSIndexPath*)indexPath {
	cell.accessoryType = UITableViewCellAccessoryNone;
}

@end
