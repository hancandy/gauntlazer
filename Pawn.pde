class Pawn extends Actor
{
    public float health = 100.0;

    public void move(PVector direction)
    {
        position.x += direction.x;
        position.y += direction.y;
    }
}
