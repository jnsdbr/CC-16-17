public class BasicCharacter
{
    protected PVector position;
    protected color cColor = #000000;
    protected float cHeight = 80;
    protected float cWidth = 30;
    protected String name = "Pete";
    
    public BasicCharacter()
    {;
        position = new PVector();
    }
    
    public void setPosition(int x, int y)
    {
        position.x = x;
        position.y = y;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
}