/**
 * Creative Coding HSOS/1617
 * Basic class example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

SquareCharacter sCharacter;

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
    
    sCharacter = new SquareCharacter();
}

void draw()
{
    background(200);
    
    sCharacter.render();
    sCharacter.setPosition(mouseX, mouseY);
}