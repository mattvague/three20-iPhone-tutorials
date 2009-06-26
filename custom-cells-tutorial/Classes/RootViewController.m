#import "RootViewController.h"

#pragma mark import dataSource
#import "RootViewDataSource.h"

# pragma mark import table cells
#import "BNCell.h"

@implementation RootViewController

			
///////////////////////////////////////////////////////////////////////////////////////////////////
// UIViewController
		
- (void)loadView {
	[super loadView];
	
	self.tableView = [[[UITableView alloc] initWithFrame:self.view.bounds
												   style:UITableViewStyleGrouped] autorelease];
	self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth
	| UIViewAutoresizingFlexibleHeight;
	self.variableHeightRows = YES;  
	self.title = @"Custom Cells Tutorial";
	[self.view addSubview:self.tableView];
}
		
//////////////////////////////////////////////////////////////////////////////////////////////////
// TTTableViewController
			
- (id<TTTableViewDataSource>)createDataSource {
	return [RootViewDataSource rootViewDataSource];
}


@end
			
