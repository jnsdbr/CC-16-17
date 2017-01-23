/**
 * Creative Coding HSOS/1617
 * Basic loop example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

final int COLS = 7;
final int ROWS = 7;
final int OFFSET = 50;

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
}

void draw()
{
    background(200);
   
    for (int i = 0; i < ROWS; i++)
    {
        for (int j = 0; j < COLS; j++)
        {
            fill(i * 5 * j, 50, 50);
            ellipse(j * 50 + OFFSET, i * 50 + OFFSET, 20, 20);
        }
    }
}