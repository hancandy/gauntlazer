/**
 * A helper class for animating spreite sheets
 */
class SpriteSheet
{
    /**
     * A container for frames and animation names
     */
    class Animation
    {
        String name = "";
        Rectangle[] frames;
        boolean canLoop = false;

        /**
         * Constructor
         */
        Animation(String n, Rectangle[] f, boolean l)
        {
            name = n;
            frames = f;
            canLoop = l;
        }
    } 

    // The image holding the initial source provided as the sprite sheet PNG
    PImage sourceImage;
    
    // The temporary image that holds the current Animation frame
    PImage currentAnimationImage = new PImage();

    float frameTimer = 0;
    int currentAnimationFrame = 0;
    Animation currentAnimation = null;
    ArrayList<Animation> animations = new ArrayList<Animation>();

    /**
     * Constructor
     */
    SpriteSheet(String path)
    {
        sourceImage = loadImage(path);
    }

    /**
     * Updates the frames
     */
    void update()
    {
        // If no animation was selected, cancel
        if(currentAnimation == null) { return; }

        // If the frame timer hasn't yet reached 0, decrement it and cancel
        if(frameTimer > 0) {
            frameTimer -= game.deltaTime;
            return;
        } 

        // What to do when the current animation frame exceeded available frames
        if(currentAnimationFrame >= currentAnimation.frames.length)
        {
            // If it's looping, set the frame back to 0
            if(currentAnimation.canLoop)
            {
                currentAnimationFrame = 0;
            }

            // If not, make sure it stays below the amount of frames in the current Animation
            else
            {
                currentAnimationFrame = currentAnimation.frames.length - 1;
            }
        }

        // Reset the frame timer
        frameTimer = SPRITE_SHEET_FRAME_DELAY;
        
        // Extract image rectangle from source
        Rectangle frame = currentAnimation.frames[currentAnimationFrame];

        // Assign the extracted image rectangle to the displayed image
        currentAnimationImage = sourceImage.get(frame.x, frame.y, frame.width, frame.height);
        
        // Increment the animation frame for the next time we reach this point
        currentAnimationFrame++;

    }

    /**
     * Plays an Animation by name
     */
    void play(String name)
    {
        // We're trying to start the same Animation as we're already playing, cancel
        if(currentAnimation != null && name == currentAnimation.name) { return; }

        // Find Animation by name
        for(int i = 0; i < animations.size(); i++)
        {
            // Animation found
            if(animations.get(i).name == name)
            {
                // Play next animation from the first frame
                currentAnimationFrame = 0;

                // Play the next animation frame right away
                frameTimer = 0;
                
                // Assign new animation
                currentAnimation = animations.get(i);
            }
        }
    }

    /**
     * Adds an Animation
     */
    void addAnimation(String name, Rectangle[] frames, boolean canLoop)
    {
        animations.add(new Animation(name, frames, canLoop));
    }

    /**
     * Draw the current frame
     */
    void draw(float x, float y)
    {
        image(currentAnimationImage, x, y);
    }
}
