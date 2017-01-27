/**
 * Creative Coding HSOS WS16/17
 * Basic interaction example
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
    if (mousePressed)
    {
        ellipse(mouseX, mouseY, 20 * (sin(counter) + 2), 20 * (sin(counter) + 2));
    }
    
    counter += 0.05;
}