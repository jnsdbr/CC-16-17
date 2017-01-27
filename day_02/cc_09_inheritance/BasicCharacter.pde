public class BasicCharacter
{
    protected PVector position;
    protected color cColor = #000000;
    protected int cHeight = 50;
    protected int cWidth = 50;
    protected String name = "Pete";
    
    public BasicCharacter()
    {
        position = new PVector();
    }
    
    public void render()
    {
        ellipse(position.x, position.y, 50, 50);
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