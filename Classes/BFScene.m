//
//  BFScene.m
//  Briefs
//
//  Created by Rob Rhyne on 7/17/09.
//  Copyright Digital Arch Design, 2009. See LICENSE file for details.
//

#import "BFScene.h"


@implementation BFScene

@synthesize bg, actors, name;

- (id)init:(NSString*)nameOfScene withDictionary:(NSDictionary*)dict
{
	if (self = [super init]) {
		NSString *path = [dict valueForKey:@"img"];
		NSString *pathToImage = [[NSBundle mainBundle] pathForResource:path ofType:nil];
		
		UIImage *image = [UIImage imageWithContentsOfFile:pathToImage];
		self.bg = image;
		self.name = nameOfScene;
		self.actors = nil;
		
		[image release];
		[path release];
		
	}
  return self;	
}

- (void)dealloc 
{
	[name release];
	//[actors release];
	[bg release];
	[super dealloc];
}

@end