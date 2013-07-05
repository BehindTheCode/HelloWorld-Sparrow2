//
//  Game.h
//

#import <Foundation/Foundation.h>
#import <UIKit/UIDevice.h>

@interface Game : SPSprite
{
@private
    float mGameWidth;
    float mGameHeight;
}

+ (BOOL)isTallScreen;
+ (float)centerX;
+ (float)centerY;

@end
