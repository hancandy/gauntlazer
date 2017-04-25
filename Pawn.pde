/**
 * A Pawn is an Actor that can move and has health
 */
class Pawn extends Actor
{
    float speed = 100.0;
    int health = 100;
    PVector velocity = new PVector(0, 0);
    PVector direction = new PVector(0, 1);

    /**
     * Update
     */
    void update()
    {
        super.update();

        move();

        // Play down animation
        if(direction.y > 0)
        {
            if(velocity.y > 0) { spriteSheet.play("WalkDown"); }
            else { spriteSheet.play("IdleDown"); }
        }
        
        // Play up animation
        else if(direction.y < 0)
        {
            if(velocity.y < 0) { spriteSheet.play("WalkUp"); }
            else { spriteSheet.play("IdleUp"); }
        }
        
        // Play left animation
        else if(direction.x < 0)
        {
            if(velocity.x < 0) { spriteSheet.play("WalkLeft"); }
            else { spriteSheet.play("IdleLeft"); }
        }
        
        // Play right animation
        else if(direction.x > 0)
        {
            if(velocity.x > 0) { spriteSheet.play("WalkRight"); }
            else { spriteSheet.play("IdleRight"); }
        }
    }

    /**
     * Initialises the sprite sheet and registers all animations
     */
    void initSpriteSheet(String path)
    {
        spriteSheet = new SpriteSheet(path);
        
        spriteSheet.addAnimation("Dead", new Rectangle[] {
            new Rectangle(48, 0, 16, 16)
        }, true);

        spriteSheet.addAnimation("IdleDown", new Rectangle[] {
            new Rectangle(0, 0, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleLeft", new Rectangle[] {
            new Rectangle(0, 16, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleRight", new Rectangle[] {
            new Rectangle(0, 32, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleUp", new Rectangle[] {
            new Rectangle(0, 48, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkDown", new Rectangle[] {
            new Rectangle(16, 0, 16, 16),
            new Rectangle(0, 0, 16, 16),
            new Rectangle(32, 0, 16, 16),
            new Rectangle(0, 0, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkLeft", new Rectangle[] {
            new Rectangle(16, 16, 16, 16),
            new Rectangle(0, 16, 16, 16),
            new Rectangle(32, 16, 16, 16),
            new Rectangle(0, 16, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkRight", new Rectangle[] {
            new Rectangle(16, 32, 16, 16),
            new Rectangle(0, 32, 16, 16),
            new Rectangle(32, 32, 16, 16),
            new Rectangle(0, 32, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkUp", new Rectangle[] {
            new Rectangle(16, 48, 16, 16),
            new Rectangle(0, 48, 16, 16),
            new Rectangle(32, 48, 16, 16),
            new Rectangle(0, 48, 16, 16)
        }, true);

        spriteSheet.play("IdleDown");
    }

    /**
     * Takes damage
     */
    void takeDamage(int amount, Actor actor)
    {
        health -= amount;

        if(health <= 0)
        {
            die();
        }
    }

    /**
     * Die
     */
    void die()
    {
        spriteSheet.play("Dead");

        canUpdate = false;
    }

    /**
     * Applies velocity to the Pawn's position
     */
    void move()
    {
        position.x += velocity.x * speed * game.deltaTime;
        position.y += velocity.y * speed * game.deltaTime;

        // Keep track of the last direction the pawn was headed in
        if(velocity.y > 0)
        {
            direction.x = 0;
            direction.y = 1;
        }
        else if(velocity.y < 0)
        {
            direction.x = 0;
            direction.y = -1;
        }
        else if(velocity.x > 0)
        {
            direction.x = 1;
            direction.y = 0;
        }
        else if(velocity.x < 0)
        {
            direction.x = -1;
            direction.y = 0;
        }
    }
    
    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        if(!other.isBlocking) { return; }

        // Intersection happened above or below the pawn
        if(intersection.width > intersection.height)
        {
            // Prevent movement if...
            if(
                // ...the intersection is above the pawn,
                // and they're trying to move upward
                (intersection.getCenterY() < getCenterY() && velocity.y < 0) ||
                
                // ...the intersection is below the pawn,
                // and they're trying to move downward
                (intersection.getCenterY() > getCenterY() && velocity.y > 0)
            )
            {
                velocity.y = 0;
            }
        }
        
        // Intersection happened to the left or right of the pawn
        else if(intersection.width < intersection.height)
        {
            // Prevent movement if...
            if(
                // ...the intersection is to the left of the pawn,
                // and they're trying to move towards the left
                (intersection.getCenterX() < getCenterX() && velocity.x < 0) ||
                
                // ...the intersection is to the right of the pawn,
                // and they're trying to move rowards the right
                (intersection.getCenterX() > getCenterX() && velocity.x > 0)
            )
            {
                velocity.x = 0;
            }
        }
    }
}
