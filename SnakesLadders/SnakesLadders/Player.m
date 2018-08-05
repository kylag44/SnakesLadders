//
//  Player.m
//  SnakesLadders
//
//  Created by Kyla  on 2018-08-04.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _player1CurrentPosition = 0;
        _player2CurrentPosition = 0;
        _rolledDice = 0;
        _gamePlayInProgess = NO;
        _playerTurn = NO;
        _rolling = NO;
        _moveFinished = YES;
        
        
    }
    return self;
}
////if is landed on a snake or ladder. also have to calculate new position
-(BOOL)checkHit:(int)currentSquare {
    switch (currentSquare) {
        case 7:
        case 20:
        case 25:
        case 28:
        case 36:
        case 42:
        case 51:
        case 58:
        case 59:
        case 62:
        case 69:
        case 71:
        case 83:
        case 86:
        case 91:
        case 94:
        case 99:
            return YES;
            break;
    
            default:
            return NO;
            break;
    }
}

-(float)snakesAndLadders:(int)currentSquare {
    float newPosition = 0;
    switch (currentSquare) {
        case 7:
            newPosition = 11;
            break;
         case 20:
            newPosition = 38;
            break;
        case 25:
            newPosition = 3;
            break;
        case 28:
            newPosition = 65;
            break;
        case 36:
            newPosition = 44;
            break;
        case 42:
            newPosition = 63;
            break;
        case 51:
            newPosition = 67;
            break;
        case 58:
            newPosition = 48;
            break;
        case 59:
            newPosition = 1;
            break;
        case 62:
            newPosition = 81;
            break;
        case 69:
            newPosition = 32;
            break;
        case 71:
            newPosition = 98;
            break;
        case 83:
            newPosition = 57;
            break;
        case 86:
            newPosition = 97;
            break;
        case 91:
            newPosition = 73;
            break;
        case 94:
            newPosition = 26;
            break;
        case 99:
            newPosition = 80;
            break;
        default:
            break;
    }
    return newPosition;
}

-(void)gameIsOver:(int)player {
    _gameOver = YES;
    _gamePlayInProgess = NO;
}
//-(NSString *)yourScore:(NSString *)result {
//    if ([result isEqualTo:@"RIGHT!"]) {
//        self.right = self.right +1;
//    } else {
//        self.wrong = self.wrong +1;
//
//
//    }
//    NSString *scoreString = [NSString stringWithFormat:@"score: %@ right, %@ wrong --- %.1f%%\n", @(self.right), @(self.wrong), self.right/(self.right + self.wrong)*100];
//    return scoreString;
//}




-(void)roll {
    int playerRolls = arc4random_uniform(5) + 1;
    NSLog(@"You rolled a %i!", playerRolls);
}



@end
