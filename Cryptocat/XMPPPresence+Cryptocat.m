//
//  XMPPPresence+Cryptocat.m
//  Cryptocat
//
//  Created by Thomas Balthazar on 16/10/13.
//  Copyright (c) 2013 Thomas Balthazar. All rights reserved.
//

#import "XMPPPresence+Cryptocat.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XMPPPresence (Cryptocat)

////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)tb_isAvailable {
  return [self.type isEqualToString:@"available"] && ![self.status isEqualToString:@"away"];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)tb_isAway {
  return [self.type isEqualToString:@"available"] && [self.status isEqualToString:@"away"];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)tb_isUnavailable {
  return [self.type isEqualToString:@"unavailable"];
}

@end