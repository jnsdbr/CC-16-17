public class SquareCharacter extends BasicCharacter
{
    private float counter = 0;
    
    // Eyes
    private PVector eyePosition;
    private int defaultEyeHeight = 7;
    private int eyeHeight = 7;
    private int blinkTimer = 0;
    private int blinkTimeOut = 0;
    
    private boolean isLookingRight = true;
    
    // Right arm
    private int defaultRightArmRotation = 60;
    private int rightArmRotation = 60;
    private int waveTimeOut = 0;

    public SquareCharacter(int x, int y)
    {
        super();
        name = "HansPeter";
        setPosition(x, y);
  
        eyePosition = new PVector(cWidth + 3, 10);    
    }

    private void blink()
    {
        eyeHeight = 0;
        blinkTimer = millis() + 100;
    }
    
    public void wave()
    {
        rightArmRotation = -60;
        waveTimeOut = millis() + 300;
    }
    
    private void lookLeft()
    {
        eyePosition.x = eyePosition.x - 7;
    }
    
    private void lookRight()
    {
        eyePosition.x = cWidth + 3;
    }
    
    public void toggleViewDirection()
    {
        isLookingRight = !isLookingRight;
        
        if (isLookingRight)
        {
            lookLeft();
        }
        else
        {
            lookRight();
        }
    }

    public void render()
    {
        pushMatrix();
        translate(position.x, position.y);
        fill(cColor);
        // Body
        rect(20, 0, cWidth, cHeight);

        // Left arm
        pushMatrix();
        translate(20, cHeight / 2 );
        rotate(radians(-60 - (sin(counter) * 2 + 1)));
        rect(10, 0, -30, 5);
        popMatrix();

        // Right arm
        pushMatrix();
        translate(cWidth + 20, cHeight / 2);
        rotate(radians(rightArmRotation + (sin(counter) * 2 + 1)));
        rect(-10, 0, 30, 5);
        popMatrix();

        // Left leg
        rect(20, cHeight, 5, 20);

        // Right leg
        rect(cWidth + 20 - 5, cHeight, 5, 20);

        pushMatrix();
        translate(eyePosition.x, eyePosition.y);
        // Left eye
        fill(255);
        rect(0, 0, 3, eyeHeight);

        // Right eye
        rect(9, 0, 3, eyeHeight);
        popMatrix();
        
        popMatrix();
        
        
        if (blinkTimeOut <= millis())
        {
            blink();
            blinkTimeOut = millis() + (int)random(2500, 5000);
        }

        if (blinkTimer < millis())
        {
            eyeHeight = defaultEyeHeight;
        }
        
        if (waveTimeOut <= millis())
        {
            rightArmRotation = defaultRightArmRotation;
        }
        
        counter += 0.05;
    }
}