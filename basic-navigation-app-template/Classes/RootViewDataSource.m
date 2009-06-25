#import "RootViewDataSource.h"
#import "BNField.h"
#import "BNCell.h"

@implementation RootViewDataSource

///////////////////////////////////////////////////////////////////////////////////////////////////
// public


+ (RootViewDataSource*)rootViewDataSource {
	RootViewDataSource* dataSource =  [[[RootViewDataSource alloc] initWithItems:
									[NSMutableArray arrayWithObjects:
									 [[[BNSubtextTableField alloc] initWithText:@"Title" subtext:@"Subtitle"] autorelease],
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
	
	if ([object isKindOfClass:[BNSubtextTableField class]]) { 
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
