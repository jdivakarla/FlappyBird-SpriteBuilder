#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character *) [CCBReader load:@"Character"];
    timeSinceObstacle = 0.0f;
    [physicsNode addChild:character];
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle+=delta;
    if(timeSinceObstacle > 2.0f) {
        timeSinceObstacle=0.0f;
        [self addObstacle];
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [character flap];
}

@end
