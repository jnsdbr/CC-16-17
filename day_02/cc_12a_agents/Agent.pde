public class Agent
{
    private PVector position;
    private int stepSize = 2;
    private color aColor = #000000;
    
    public Agent()
    {
        position = new PVector(0, 0);
    }
    
    public Agent(float x, float y)
    {
        position = new PVector(x, y);
    }
    
    public PVector getPosition()
    {
        return position;
    }
    
    public void update()
    {
        position.x += random(-stepSize, stepSize);
        position.y += random(-stepSize, stepSize);
        position.x = constrain(position.x, 0, width);
        position.y = constrain(position.y, 0, height);        
    }
    
    public void render()
    {
        fill(aColor, 50);
        noStroke();
        ellipse(position.x, position.y, 5, 5);
    }
}