/**
 * Creative Coding HSOS WS16/17
 * Basic animation example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

SquareCharacter sCharacter;

ArrayList<SquareCharacter> characters;

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
    
    characters = new ArrayList<SquareCharacter>();
    
    for (int i = 0; i < 4; i++)
    {
        characters.add(new SquareCharacter(0 + i * 50, height / 2 + 60));
    }
    
    //sCharacter = new SquareCharacter(width / 2 - 30,  height / 2 - 60);
}

void draw()
{
    background(200);
    
    for (SquareCharacter sq: characters)
    {
        sq.render();
    }
}

void mousePressed()
{
    //sCharacter.wave();
    
    int index = (int)random(0, characters.size());
    characters.get(index).wave();
}

void keyPressed()
{
    if (key == 'l')
    {
        sCharacter.toggleViewDirection();
    }
}