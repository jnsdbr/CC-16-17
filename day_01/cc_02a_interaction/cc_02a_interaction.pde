/**
 * Creative Coding HSOS WS16/17
 * Basic interaction example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

void setup()
{
    size(400, 400);
}

void draw()
{
    if (mousePressed)
    {
        ellipse(mouseX, mouseY, 50, 50);
    }
}