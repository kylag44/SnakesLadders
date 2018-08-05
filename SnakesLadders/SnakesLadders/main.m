//
//  main.m
//  SnakesLadders
//
//  Created by Kyla  on 2018-08-04.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"Roll!");
        
        while (YES) {
            
            InputHandler *inputHandler = [[InputHandler alloc] init];
            NSString *input = [inputHandler getInput];
            
            Player *player1 = [[Player alloc] init];
            [player1 roll]; 
            
            
            
            
            
            
            
            
            
            
        }
        
        
    }
    return 0;
}
