public class BasicCharacter
{
    PVector position;
    color cColor = #000000;
    int cHeight = 50;
    int cWidth = 50;
    String name = "Pete";
    
    public BasicCharacter()
    {
        position = new PVector();
    }
    
    public void render()
    {
        ellipse(position.x, position.y, cHeight, cWidth);
    }
}