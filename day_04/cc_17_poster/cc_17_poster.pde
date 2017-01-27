/**
 * Creative Coding HSOS WS16/17
 * Poster example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

import ddf.minim.*;
import ddf.minim.analysis.*;
import processing.pdf.*;

Minim minim;
AudioPlayer song;
FFT fft;

boolean record = false;

/*
color colors[] = {
 #556270,
 #4ECDC4,
 #C7F464,
 #FF6B6B,
 #C44D58
 };*/

/*
color colors[] = {
 #0B486B,
 #3B8686,
 #79BD9A,
 #A8DBA8,
 #CFF09E
 };*/

/*
color colors[] = {
 #DAD8A7,
 #FF9E9D,
 #FF3D7F,
 #7FC7AF,
 #3FB8AF
 };*/

/*color colors[] = {
 #26ADE4,
 #D1E751,
 #4DBCE9,
 #FFFFFF,
 #000000
 };*/

color colors[] = {
    #ffffff, 
    #333333, 
    #000000, 
    #222222, 
    #999999
};

int fileIndex = 3;

String files[] = {
    "song1.mp3",
    "song2.mp3"
};

int targetTime = 0;
int targetTime2 = 0;
int targetTime3 = 0;
int targetTime4 = 0;

boolean debug = false;

int column = 0;
int row = 1;
boolean stopped = false;

final int COLUMN_LENGTH = 39;
final int ROW_LENGTH = 56;
final int SPACING = 15;

ArrayList<Shape> shapes = new ArrayList<Shape>();


void setup()
{
    size(600, 840, P3D);
    pixelDensity(displayDensity());
    smooth();

    minim = new Minim(this);
    song = minim.loadFile(files[fileIndex], 2048);
    song.play();
    fft = new FFT(song.bufferSize(), song.sampleRate());
}

void draw()
{
    if (record)
    {
        beginRecord(PDF, "viz_" + files[fileIndex] + "_####.pdf");
    }    

    background(colors[0]);
    stroke(0);

    Shape shape = null;

    fft.forward(song.mix);

    // Display equalizer
    float max = fft.getFreq(0);
    float avgFFT = 0;

    for (int i = 0; i < fft.specSize(); i++)
    {
        float x = 0.5*i;
        float y = fft.getFreq(i);
        avgFFT += fft.getFreq(i);

        if (debug)
            point(x, y);

        if (fft.getFreq(i) > max)
        {
            max = fft.getFreq(i);
        }
    }

    avgFFT = avgFFT / fft.specSize();

    if (debug)
    {
        line(mouseX, 0, mouseX, height);
    }

    if (fft.getFreq(880) * 3 > 100 && millis() > targetTime && shape == null)
    {
        targetTime2 = millis() + 300;
        column++;

        shape = new Shape(new PVector(column * SPACING, row * SPACING));
        shape.type = 0;
        shape.shapeColor = colors[1];
    }

    if (max > 150 && millis() > targetTime2 && shape == null)
    {
        targetTime2 = millis() + 200;
        column++;

        shape = new Shape(new PVector(column * SPACING, row * SPACING));
        shape.type = 1;   
        shape.shapeColor = colors[2];
    }

    if (fft.getFreq(412) * 3 > 100 && millis() > targetTime3 && shape == null)
    {
        targetTime3 = millis() + 200;
        column++;

        shape = new Shape(new PVector(column * SPACING, row * SPACING));
        shape.type = 2;   
        shape.shapeColor = colors[3];
    }

    if (millis() > targetTime4 && shape == null)
    {
        targetTime4 = millis() + 300;
        column++;

        shape = new Shape(new PVector(column * SPACING, row * SPACING));
        shape.type = 3;   
        shape.shapeColor = colors[4];
    }

    if (shape != null && !stopped)
    {
        shapes.add(shape);
    }

    for (Shape s : shapes)
    {
        s.render();
    }

    if (column == COLUMN_LENGTH)
    {
        row++;
        column = 0;

        // Canvas is full
        if (row == ROW_LENGTH)
        {
            stopped = true;
        }
    }

    // Last beat was more then two seconds ago...
    if (!song.isPlaying())
    {
        saveFrame("viz_" + files[fileIndex] + ".png");
        println("FIN");
        //exit();
    }

    if (record)
    {
        endRecord();
        record = false;
    }
}

void mousePressed()
{
    println(mouseX * 2);
}

void keyPressed()
{
    if (key == 'd')
    {
        debug = !debug;
    }
    
    if (key == 's')
    {
        record = true;
    }
}

void stop()
{
    // always close Minim audio classes when you finish with them
    minim.stop();
    super.stop();
}