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

    // The timer that keeps track of when to play the next frame
    float frameTimer = 0;

    // The current frame index
    int currentAnimationFrame = 0;

    // The current animation object
    Animation currentAnimation = null;

    // The speed with which this SpriteSheet plays
    float speed = 1.0;

    // The list of vailable animations
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

        // What to do when the current animation frame exceeds available frames
        if(currentAnimationFrame >= currentAnimation.frames.length)
        {
            // If the current Animation is looping, set the frame back to 0
            if(currentAnimation.canLoop)
            {
                currentAnimationFrame = 0;
            }

            // If not, make sure it stays below the amount of available frames
            else
            {
                currentAnimationFrame = currentAnimation.frames.length - 1;
            }
        }

        // Reset the frame timer
        frameTimer = SPRITE_SHEET_FRAME_DELAY / speed;
       
        // Update image
        updateImage(); 
        
        // Increment the animation frame for the next time we reach this point
        currentAnimationFrame++;

    }

    /**
     * Updates the display image with the appropriate data
     */
    void updateImage()
    {
        // Extract frame image rectangle from source
        Rectangle frame = currentAnimation.frames[currentAnimationFrame];

        // Assign the extracted image rectangle to the displayed image
        currentAnimationImage = sourceImage.get(frame.x, frame.y, frame.width, frame.height);
    }

    /**
     * Plays an Animation by name
     */
    void play(String name)
    {
        play(name, false);
    }

    void play(String name, boolean reset)
    {
        // We're trying to start the same Animation as we're already playing,
        // and we're not explicitly resetting the animation, cancel
        if(!reset && currentAnimation != null && name == currentAnimation.name) { return; }

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

                // Update the image
                updateImage();
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
