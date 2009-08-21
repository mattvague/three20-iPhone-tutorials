#import <Foundation/Foundation.h>
#import "Three20/TTStyleSheet.h"

@interface BNStyleSheet : TTStyleSheet {
	
}

+ (BNStyleSheet*)globalStyleSheet;
+ (void)setGlobalStyleSheet:(BNStyleSheet*)styleSheet;

@end