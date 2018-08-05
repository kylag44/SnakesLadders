//
//  Player.h
//  SnakesLadders
//
//  Created by Kyla  on 2018-08-04.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (nonatomic) NSUInteger currentSquare;

///youtube help
@property (nonatomic) BOOL gamePlayInProgess;
@property (nonatomic) BOOL playerTurn;
@property (nonatomic) BOOL rolling;
@property (nonatomic) BOOL moveFinished;
@property (nonatomic) BOOL gameOver;

@property (nonatomic) int player1CurrentPosition;
@property (nonatomic) int player2CurrentPosition;

@property (nonatomic) int rolledDice;





- (void)roll;


//roll should return void. To start, let's just create a random value between 1 and 6 in roll using arc4random_uniform() to do this. Log this dice value to the console.
//
//We only need to create 1 player. So we should do this outside the while loop in main.m
//
//Check the parsed input string for "roll" or "r" from main.m. If the user inputs one of these strings then call the roll method on the Player instance. Test to see whether roll works.

@end
