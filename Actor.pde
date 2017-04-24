class Actor
{
  PVector pos = new PVector();
  //check for collision
  //check if a pixel overlaps with its boundaries
  //cannot move

  class Wall
  {
    //block players and other pawns
  }

  class Pawn
  {
    //can move up and down left right, change position
    //has health
    class Player
    {
      //Can receive user input to move                                                                                                                                                              
      //Has a simple inventory (just an array of objects)
    }
    class Character
    {
      //Can use simple AI to control movement
      //Can do a simple raycast to check for line of sight
      //has a damage amount
    }
  }
  
  class Door
  {
   //Blocks the player from entering until unlocked 
  }

  class Item
  {
    //Can be picked up by the player
    //Needs a boolean for can/cannot be stored in inventory                                                                                                                                       

    class Powerup
    {
      // Cannot be stored in the inventory, takes effect immediately
      
      class Health
      {
       //Restores player health                                                                                                                                                                       
      }
      
      class Ammo
      {
        //Restores player ammunition
      }
    }
    
     class Key
     {
       //Can open doors, if they exist in the player's inventory                                                                                                                                     
     }
     
     class Weapon
     {
       // Can fire a projectile (make it a raycast, not a bullet, for simplicity's sake)
     }
  }
}