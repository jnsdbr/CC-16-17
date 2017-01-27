/**
 * Creative Coding HSOS WS16/17
 * Basic loop example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
}

void draw()
{
    background(200);
   
    for (int i = 1; i <= 3; i++)
    {
        fill(i * 50);
        ellipse(i * 100, 40, 20, 20);
    } 
}