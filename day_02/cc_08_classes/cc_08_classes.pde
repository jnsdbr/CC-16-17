/**
 * Creative Coding HSOS/1617
 * Basic class example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

BasicCharacter c;

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
    
    c = new BasicCharacter();
}

void draw()
{
    background(200);
    c.render();
}