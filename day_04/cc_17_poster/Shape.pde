class Shape
{
    PVector position;
    int type = 0;
    int size = 10;
    color shapeColor = #333333;
    
    Shape()
    {
        this.position = new PVector();
    }
    
    Shape(PVector position)
    {
        this.position = position;
    }

    void render()
    {
        fill(shapeColor);
        noStroke();
        switch(this.type)
        {
            case 1:
                rect(this.position.x - this.size / 2, this.position.y - this.size / 2, this.size, this.size);
            break;
            case 2:
                triangle(this.position.x - this.size / 2, this.position.y + this.size / 2, this.position.x, this.position.y - this.size / 2, this.position.x + this.size / 2, this.position.y + this.size / 2);
            break;
            case 3:
                ellipse(this.position.x, this.position.y, this.size / 2, this.size / 2);
            break;
            default:
                ellipse(this.position.x, this.position.y, this.size, this.size);
            break;
        }
    }
}