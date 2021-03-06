/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

#import "Try.h"

@implementation Try

- (id) initWithTry: (void(^)()) tryBlock catch: (void(^)(NSException *exception)) catchBlock {
    if (self = [super init]) {
        @try {
            tryBlock();
        }
        @catch (NSException *exception) {
            catchBlock(exception);
        }
    }
    return self;
}

@end
