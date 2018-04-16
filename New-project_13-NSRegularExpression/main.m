//
//  main.m
//  New-project_13-NSRegularExpression
//
//  Created by Geraint on 2018/4/16.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 正则表达式
        NSError *error;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"World" options:NSRegularExpressionCaseInsensitive error:&error];
        NSString *greeting = @"Hello , World!";
        NSTextCheckingResult *match = [regex firstMatchInString:greeting options:0 range:NSMakeRange(0, [greeting length])];
        NSRange range = [match range];
        NSLog(@"Match begins at %ldth character in string",range.location);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
