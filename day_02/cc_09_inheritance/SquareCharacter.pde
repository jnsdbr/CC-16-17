public class SquareCharacter extends BasicCharacter
{
    public SquareCharacter()
    {
        name = "Pete";
    }
    
    public void render()
    {
        pushMatrix();
        translate(position.x, position.y);
        fill(0);
        // Body
        rect(20, 0, 30, 80);
        
        // Left arm
        rect(0, 35, 20, 5);
        
        // Right arm
        rect(50, 35, 20, 5);
        
        // Left leg
        rect(20, 80, 5, 20);
        
        // Right leg
        rect(45, 80, 5, 20);
        
        // Left eye
        fill(255);
        rect(33, 10, 3, 7);
        
        // Right eye
        rect(42, 10, 3, 7);
        popMatrix();    
    }    
}