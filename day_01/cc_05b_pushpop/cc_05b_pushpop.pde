/**
 * Creative Coding HSOS WS16/17
 * Basic pushmatrix/popmatrix example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
 
float counter = 0;

void setup()
{
    size(400, 400);
}

void draw()
{
    background(200);
    
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(counter));
    rect(0, 0, 50, 5);
    popMatrix();
    
    counter += 1;
}