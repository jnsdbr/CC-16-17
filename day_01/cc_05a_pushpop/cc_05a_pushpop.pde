/**
 * Creative Coding HSOS WS16/17
 * Basic pushmatrix/popmatrix example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

void setup()
{
    size(400, 400);
}

void draw()
{
    background(200);
    
    if (mousePressed)
    {
        pushMatrix();
        translate(width / 2, height / 2);
        ellipse(0, 0, 50, 50);    
        popMatrix();
        ellipse(50, 50, 50, 50);
    }
    else
    {
        translate(width / 2, height / 2);
        ellipse(0, 0, 50, 50);
        ellipse(50, 50, 50, 50);  
    }
    
}